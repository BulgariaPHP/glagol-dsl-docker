FROM php:7.1-fpm-alpine

MAINTAINER Yoan-Alexander Grigorov <joan.grigorov@gmail.com>

RUN docker-php-ext-install pdo pdo_mysql \
    && apk add --no-cache $PHPIZE_DEPS \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug
