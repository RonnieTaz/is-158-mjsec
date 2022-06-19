<?php

use Bramus\Router\Router;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Session\SessionInterface;

return static function (Router $router, SessionInterface $session) {
    $router->before('GET|POST|PUT|PATCH|DELETE', '/alumni*', function () use ($session) {
        if (!$session->has('user_id') || is_null($session->get('user_id'))) {
            return (new RedirectResponse('/login'))->send();
        }
    });

    $router->before('GET|POST|PUT|PATCH|DELETE', '/logout', function () use ($router, $session) {
        if (!$session->has('user_id') || is_null($session->get('user_id'))) {
            $router->trigger404();
        }
    });

    $router->get('/', 'PagesController@index');
    $router->get('/about', 'PagesController@about');
    $router->get('/alumni', 'PagesController@alumni');

    $router->get('/alumni/register', 'PagesController@registerAlumnus');
    $router->post('/alumni/register', 'AlumniController@store');

    $router->get('/login', 'PagesController@login');
    $router->post('/login', 'AuthController@login');

    $router->get('/register', 'PagesController@register');
    $router->post('/register', 'AuthController@register');

    $router->get('/logout', 'AuthController@logout');
};
