FROM openjdk:8-jdk-alpine

MAINTAINER Yoan-Alexander Grigorov <joan.grigorov@gmail.com>

RUN mkdir /usr/local/src \
    && apk --update add --virtual build-dependencies wget openssl

ENV VERSION "0.3.4"

RUN wget -O /usr/local/src/glagol-dsl-client.jar \
    "https://github.com/BulgariaPHP/glagol-dsl-client/releases/download/${VERSION}/glagol-dsl-client-${VERSION}.jar" \
    && apk del build-dependencies

ADD glagol-client /usr/bin/glagol-client

RUN chmod +x /usr/bin/glagol-client \
    && mkdir /app

WORKDIR /app

ENTRYPOINT ["glagol-client"]
