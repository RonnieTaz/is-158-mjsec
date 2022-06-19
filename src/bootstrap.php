<?php

declare(strict_types=1);

use Bramus\Router\Router;
use Symfony\Component\HttpFoundation\Session\Session;
use Illuminate\Database\Capsule\Manager as Capsule;
use Illuminate\Events\Dispatcher;
use Illuminate\Container\Container;

date_default_timezone_set('Africa/Dar_es_Salaam');

require_once dirname(__DIR__) . '/vendor/autoload.php';

Dotenv\Dotenv::createImmutable(dirname(__DIR__))->safeLoad();

$session = new Session();

$capsule = new Capsule;

$capsule->addConnection([
    'driver' => env('DATABASE_DRIVER', 'mysql'),
    'host' => env('DB_HOST', 'localhost'),
    'database' => env('DB_NAME', 'mjsec'),
    'username' => env('DB_USER', 'admin'),
    'password' => env('DB_PASS', ''),
    'charset' => 'utf8',
    'collation' => 'utf8_unicode_ci',
]);


$router = new Router();

$session->start();

$capsule->setEventDispatcher(new Dispatcher(new Container));

$router->setNamespace('\App\Http\Controllers');

$webRoutes = include_once "Routes/web.php";
$webRoutes($router, $session);

// Make this Capsule instance available globally via static methods... (optional)
$capsule->setAsGlobal();

// Setup the Eloquent ORM... (optional; unless you've used setEventDispatcher())
$capsule->bootEloquent();

$router->run();

