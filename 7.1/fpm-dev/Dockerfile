FROM php:7.1-fpm

MAINTAINER Yoan-Alexander Grigorov <joan.grigorov@gmail.com>

RUN docker-php-ext-install pdo pdo_mysql mbstring \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && rm -rf /tmp/pear ~/.pearrc \
    && rm -r /var/lib/apt/lists/*
