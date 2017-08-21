FROM openjdk:8-jdk-alpine

MAINTAINER Yoan-Alexander Grigorov <joan.grigorov@gmail.com>

ENV VERSION "v0.3.4"

RUN mkdir /usr/local/src

RUN apk --update add --virtual build-dependencies wget openssl
RUN wget -O /usr/local/src/glagol-dsl-client.jar \
    "https://github.com/BulgariaPHP/glagol-dsl-client/releases/download/${VERSION}/glagol-dsl-client-${VERSION}.jar"
RUN apk del build-dependencies

ADD glagol-client /usr/bin/glagol-client

RUN chmod +x /usr/bin/glagol-client

RUN mkdir /app
WORKDIR /app

ENTRYPOINT ["glagol-client"]
