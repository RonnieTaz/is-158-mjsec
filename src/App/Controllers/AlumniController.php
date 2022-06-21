<?php

namespace App\Http\Controllers;

use App\Enum\Results;
use App\Http\Models\Alumnus;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;
use Valitron\Validator;

class AlumniController
{
    public function store(): RedirectResponse
    {
        $request = Request::createFromGlobals();
        $results = [];
        foreach (Results::cases() as $case) {
            $results[] = $case->value;
        }
        $validator = new Validator($request->request->all());
        $validator->rules([
            'required' => [
                ['alumnus_name'], ['enrollment_year'], ['graduation_year'], ['headmaster_name'],
                ['teacher_name'], ['results'], ['occupation']
            ],
            'lengthMax' => [
                ['alumnus_name', 30], ['teacher_name', 30], ['occupation', 20]
            ],
            'in' => [
                ['results', $results],
                ['enrollment_year', get_years_range(20)],
                ['graduation_year', get_years_range(16)]
            ],
            'email' => [
                ['email']
            ]
        ]);

        if (!$validator->validate()) {
            foreach ($validator->errors() as $error) {
                session()->getFlashBag()->add('warning', $error);
            }
            return (new RedirectResponse('/alumni/register'))->send();
        }

        $enum = match ($request->request->get('results')) {
            'I' => Results::DIVISION_ONE,
            'II' => Results::DIVISION_TWO,
            'III' => Results::DIVISION_THREE,
            'IV' => Results::DIVISION_FOUR,
            '0' => Results::DIVISION_ZERO
        };

        try {
            Alumnus::create([
                'name' => $request->request->get('alumnus_name'),
                'enrollment_year' => $request->request->get('enrollment_year'),
                'graduation_year' => $request->request->get('graduation_year'),
                'headmaster' => $request->request->get('headmaster_name'),
                'famous_teacher' => $request->request->get('teacher_name'),
                'results' => $enum,
                'occupation' => $request->request->get('occupation'),
                'address' => $request->request->get('address'),
                'email' => $request->request->get('email'),
                'phone_number' => $request->request->get('phone_number')
            ]);

            return (new RedirectResponse('/alumni'))->send();
        } catch (\Exception $e) {
            session()->getFlashBag()->add('danger', "Failed to create Alumnus: {$e->getMessage()}");
            return (new RedirectResponse('/alumni/register'))->send();
        }
    }
}