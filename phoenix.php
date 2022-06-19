<?php
declare(strict_types=1);

//Load Environment Variables
Dotenv\Dotenv::createImmutable(__DIR__)->safeLoad();

return [
    'migration_dirs' => [
        'migration' => __DIR__ . '/src/Database/Migrations',
        'seeder' => __DIR__ . '/src/Database/Seeders'
    ],
    'environments' => [
        'local' => [
            'adapter' => env('DATABASE_DRIVER', 'mysql'),
            'host' => env('DB_HOST', '127.0.0.1'),
            'username' => env('DB_USER', 'admin'),
            'password' => env('DB_PASS', ''),
            'db_name' => env('DB_NAME', 'mjsec'),
            'charset' => 'utf8',
        ],
        'production' => [
            'adapter' => 'mysql',
            'host' => 'localhost',
            'username' => 'root',
            'password' => '',
            'db_name' => 'mjssec',
            'charset' => 'utf8',
        ],
    ],
    'default_environment' => 'local',
    'log_table_name' => 'phoenix_log',
];
