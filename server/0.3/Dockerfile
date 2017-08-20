FROM openjdk:8-jdk-alpine

MAINTAINER Yoan-Alexander Grigorov <joan.grigorov@gmail.com>

ENV VERSION "v0.3.0"

RUN mkdir /usr/local/src

RUN apk --update add --virtual build-dependencies wget openssl
RUN wget -O /usr/local/src/glagol-dsl-server.jar \
    "https://github.com/BulgariaPHP/glagol-dsl/releases/download/${VERSION}/glagol-dsl.jar"
RUN apk del build-dependencies

ADD glagol-server /usr/bin/glagol-server

RUN chmod +x /usr/bin/glagol-server

ENTRYPOINT ["glagol-server"]
CMD ["glagol-server", "daemon"]
