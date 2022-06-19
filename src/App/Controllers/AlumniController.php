<?php

namespace App\Http\Controllers;

use Symfony\Component\HttpFoundation\Request;

class AlumniController
{
    public function store()
    {
        $request = Request::createFromGlobals();
        dump($request->request->all());
    }
}