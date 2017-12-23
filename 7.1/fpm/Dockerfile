FROM php:7.1-fpm

MAINTAINER Yoan-Alexander Grigorov <joan.grigorov@gmail.com>

RUN docker-php-ext-install pdo pdo_mysql \
    && pecl install ds \
    && docker-php-ext-enable ds \
    && rm -rf /tmp/pear ~/.pearrc \
    && rm -r /var/lib/apt/lists/*
