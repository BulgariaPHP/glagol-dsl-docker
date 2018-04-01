FROM php:7.1-apache

MAINTAINER Yoan-Alexander Grigorov <joan.grigorov@gmail.com>

RUN apt-get update -y \
    && apt-get install -y \
        $PHPIZE_DEPS \
        zlib1g-dev \
    && docker-php-ext-install pdo pdo_mysql mbstring zip \
    && pecl install ds \
    && docker-php-ext-enable ds \
    && docker-php-source delete \
    && rm -rf /tmp/pear ~/.pearrc \
    && apt-get purge -y $PHPIZE_DEPS \
    && apt-get autoremove -y \
    && rm -r /var/lib/apt/lists/* \
    && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer \
    && composer global require "hirak/prestissimo:^0.3" \
    && a2enmod rewrite

COPY init.sh /usr/local/bin/app-startup
COPY virtual_host.conf /etc/apache2/sites-available/000-default.conf

CMD ["app-startup"]
