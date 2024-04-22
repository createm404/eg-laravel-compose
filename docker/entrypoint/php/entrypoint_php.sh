#!/bin/sh
cp /var/www/src/.env.example /var/www/src/.env 

composer update --working-dir=/var/www/src
composer install --working-dir=/var/www/src

php artisan key:generate

chown -R www-data:www-data /var/www/src/*
php /var/www/src/artisan migrate:fresh --seed
php-fpm

