<?php

use App\Core\View;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\HttpFoundation\Session\SessionInterface;

if (!function_exists('view')) {
    function view(string $template, array $variables = []): bool|string
    {
        return (new View())->render($template, $variables);
    }
}

if (!function_exists('auth')) {
    function auth(SessionInterface $session, $id = null): bool
    {
        return !is_null($id) && $session->has('user_id') && ($session->get('user_id') === $id);
    }
}

if (!function_exists('session')) {
    function session(): Session
    {
        global $session;

        return $session;
    }
}

if (!function_exists('get_years_range')) {
    function get_years_range(int $limit): array
    {
        return range(date('Y', strtotime("-${limit} Years")), date('Y', time()));
    }
}
