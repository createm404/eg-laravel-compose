FROM php:8.2-fpm-alpine

WORKDIR /var/www/src

RUN docker-php-ext-install pdo pdo_mysql

COPY --from=composer /usr/bin/composer /usr/bin/composer

ARG COMPOSER_ALLOW_SUPERUSER=1

COPY ./entrypoint/php/entrypoint_php.sh /
RUN chmod +x /entrypoint_php.sh

ENTRYPOINT ["/entrypoint_php.sh"]
