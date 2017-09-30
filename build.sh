#!/bin/bash
for file in "$@"
do
    path=$(dirname ${file})
    dir=${dir:2:${#path}}
    tag=${dir//\//-}

    docker build -t glagol/php:${tag} ${path}
    docker login -u ${DOCKER_ID} -p ${DOCKER_SECRET}
    docker push glagol/php:${tag}
done