<?php

namespace App\Http\Controllers;

use App\Http\Models\Alumnus;
use Faker\Factory;
use Symfony\Component\HttpFoundation\Response;

class PagesController
{
    public static function index(): Response
    {
        return (new Response(view('home.tpl', [
            'slideshows' => [
                [
                    'src' => '/assets/img/54802_442127232511526_195221753_o.jpg',
                    'alt' => ''
                ],
                [
                    'src' => '/assets/img/408671_422864804437769_197498100_n.jpg',
                    'alt' => ''
                ],
                [
                    'src' => '/assets/img/615718_440897525967830_659700663_o.jpg',
                    'alt' => ''
                ]
            ]
        ])))->send();
    }

    public static function about(): Response
    {
        $faker = Factory::create();
        return (new Response(view('about.tpl', [
            'history' => $faker->sentences(12, true),
            'vision' => $faker->sentence(16),
            'mission' => $faker->sentence(22)
        ])))->send();
    }

    public static function login(): Response
    {
        return (new Response(view('Auth/login.tpl')))->send();
    }

    public static function register(): Response
    {
        return (new Response(view('Auth/register.tpl')))->send();
    }

    public static function alumni(): Response
    {
        return (new Response(view('alumni.tpl', [
            'alumni' => Alumnus::all()->toArray()
        ])))->send();
    }

    public function registerAlumnus(): Response
    {
        return (new Response(view('add-alumnus.tpl', [
            'graduationYears' => get_years_range(16),
            'enrollmentYears' => get_years_range(20)
        ])))->send();
    }

    public static function staffs(): Response
    {
        $faker = Factory::create();

        $staffs = [];
        for ($i = 0; $i < 7; $i++) {
            $data = [
                'name' => $faker->name(),
                'content' => $faker->sentences(3, true),
                'subjects' => $faker->words(rand(1, 5)),
                'email' => $faker->email(),
                'phone' => $faker->e164PhoneNumber()
            ];
            $staffs[] = $data;
        }
        return (new Response(view('staffs.tpl', ['staffs' => $staffs])))->send();
    }

    public static function contacts(): Response
    {
        return (new Response(view('contacts.tpl')))->send();
    }
}