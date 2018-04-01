FROM php:7.1-apache

MAINTAINER Yoan-Alexander Grigorov <joan.grigorov@gmail.com>

RUN apt-get update -y \
    && apt-get install -y \
        $PHPIZE_DEPS \
        zlib1g-dev \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install pdo pdo_mysql mbstring zip \
    && pecl install ds \
    && docker-php-ext-enable ds \
    && docker-php-source delete \
    && rm -rf /tmp/pear ~/.pearrc \
    && apt-get purge -y $PHPIZE_DEPS \
    && apt-get autoremove -y \
    && rm -r /var/lib/apt/lists/* \
    && a2enmod rewrite
