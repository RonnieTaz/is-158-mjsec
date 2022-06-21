
# IS 158 - Majengo Secondary School

Majengo Secondary School website as per IS 158 assignment requirements



## Badges

Add badges from somewhere like: [shields.io](https://shields.io/)

![GitHub](https://img.shields.io/github/license/RonnieTaz/is-158-mjsec)
![Packagist PHP Version Support](https://img.shields.io/packagist/php-v/RonnieTaz/is-158-mjsec)
![GitHub commit activity](https://img.shields.io/github/commit-activity/m/RonnieTaz/is-158-mjsec)
## Acknowledgements

 - [Smarty Templates](https://www.smarty.net/)
 - [Symfony Components](https://symfony.com/components)
 - [Phoenix](https://github.com/lulco/phoenix)


## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

`DATABASE_DRIVER`

`DB_HOST`

`DB_USER`

`DB_PASS`

`DB_NAME`


## Run Locally

Clone the project

```bash
  git clone https://github.com/RonnieTaz/is-158-mjsec.git
```

Create database with name `mjsec`

Install dependencies

```bash
  composer install
```

Run Migrations

```
    php vendor/bin/phoenix migrate
```
Start the server

```bash
  php -S localhost:8080 -t public/
```


## Contributing

Contributions are always welcome!

See `contributing.md` for ways to get started.

Please adhere to this project's `code of conduct`.

