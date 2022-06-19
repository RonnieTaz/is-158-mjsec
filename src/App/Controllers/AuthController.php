<?php

namespace App\Http\Controllers;

use App\Core\FileUploader;
use App\Http\Models\User;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Valitron\Validator;

class AuthController
{
    public static function login(): RedirectResponse|JsonResponse|Response
    {
        $request = Request::createFromGlobals();

        $validator = new Validator($request->request->all());
        $validator->rules([
            'required' => [
                ['username'], ['password']
            ]
        ]);

        if (!$validator->validate()) {
            return (new JsonResponse($validator->errors()))->send();
        }

        try {
            /**
             * @var $user User
             */
            $user = User::where('username', $request->request->get('username'))->firstOrFail();

            if (!password_verify($request->request->get('password'), $user->password)) {
                return (new Response('Invalid Password', 403))->send();
            }

            session()->set('user_id', $user->id);
            session()->set('user_name', $user->full_name);
            return (new RedirectResponse('/alumni'))->send();
        } catch (ModelNotFoundException) {
            return (new Response('Invalid Username', 404))->send();
        }
    }

    public static function register(): RedirectResponse|JsonResponse|Response
    {
        $request = Request::createFromGlobals();

        $validator = new Validator($request->request->all());
        $validator->rules([
            'required' => [
                ['first_name'], ['last_name'], ['email'], ['password'], ['dob'], ['username']
            ],
            'lengthMin' => [
                ['first_name', 3], ['last_name', 3], ['password', 8]
            ],
            'dateBefore' => [
                ['dob', date('d-m-Y')]
            ]
        ]);
        $validator->labels([
            'dob' => 'Date Of Birth'
        ]);

        if (!$validator->validate()) {
            return (new JsonResponse($validator->errors()))->send();
        }

        if (!$request->files->has('cv') || $request->files->get('cv') === null) {
            return (new Response('Make sure the file is selected before uploading.'))->send();
        }

        $contacts = [
            'phone_number' => $request->request->get('phone_number'),
            'facebook_id' => $request->request->get('facebook'),
            'instagram_id' => $request->request->get('instagram'),
            'twitter_id' => $request->request->get('twitter')
        ];

        if (!is_dir(dirname(__DIR__, 3) . "/storage/CV")) {
            mkdir(dirname(__DIR__, 3) . "/storage/CV", 0777, true);
        }

        $uploader = new FileUploader(dirname(__DIR__, 3) . '/storage/CV');
        $file = "{$uploader->getTargetDirectory()}/{$uploader->upload($request->files->get('cv'))}";

        try {
            User::create([
                'first_name' => $request->request->get('first_name'),
                'middle_name' => $request->request->get('middle_name'),
                'last_name' => $request->request->get('last_name'),
                'dob' => $request->request->get('dob'),
                'username' => $request->request->get('username'),
                'email' => $request->request->get('email'),
                'password' => password_hash($request->request->get('password'), PASSWORD_DEFAULT),
                'cv' => $file,
                'contacts' => $contacts
            ]);
        } catch (\Exception $e) {
            return (new Response("Failed to create user: {$e->getMessage()}"))->send();
        }

        return (new RedirectResponse('/login'))->send();
    }

    public static function logout(): RedirectResponse
    {
        session()->clear();
        return (new RedirectResponse('/'))->send();
    }
}