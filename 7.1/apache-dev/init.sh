#!/bin/sh
composer install --no-interaction \
        --no-progress \
        --no-scripts \
        --no-suggest \
        --prefer-dist \
&& apache2-foreground
