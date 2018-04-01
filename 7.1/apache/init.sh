#!/bin/sh
composer install --no-interaction \
        --no-progress \
        --no-scripts \
        --no-suggest \
        --prefer-dist \
        --no-dev \
&& apache2-foreground
