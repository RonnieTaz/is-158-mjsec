<?php

namespace App\Http\Controllers;

use App\Http\Models\Alumnus;
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
        return (new Response(view('about.tpl')))->send();
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
}