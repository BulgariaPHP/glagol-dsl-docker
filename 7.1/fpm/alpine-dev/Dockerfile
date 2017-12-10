FROM php:7.1-fpm-alpine

MAINTAINER Yoan-Alexander Grigorov <joan.grigorov@gmail.com>

RUN docker-php-ext-install pdo pdo_mysql \
    && apk add --no-cache --virtual .build-deps $PHPIZE_DEPS \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && rm -rf /tmp/pear ~/.pearrc \
    && apk del .build-deps
