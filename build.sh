#!/bin/sh
IMAGES="$(find . -name Dockerfile | sort)"
for file in $IMAGES
do
    path=$(dirname ${file})
    dir=${path:2:${#path}}
    tag=${dir//\//-}

    docker build -t glagol/php:${tag} ${path}
    docker login -u ${DOCKER_ID} -p ${DOCKER_SECRET}
    docker push glagol/php:${tag}
done
