FROM openjdk:8-jdk-alpine

MAINTAINER Yoan-Alexander Grigorov <joan.grigorov@gmail.com>

ENV VERSION "0.3.9"

ADD glagol-server /usr/bin/glagol-server

RUN mkdir /usr/local/src \
    && apk --update add --virtual build-dependencies wget openssl \
    && wget -O /usr/local/src/glagol-dsl-server.jar \
        "https://github.com/BulgariaPHP/glagol-dsl/releases/download/${VERSION}/glagol-dsl-server-${VERSION}.jar" \
    && apk del build-dependencies \
    && chmod +x /usr/bin/glagol-server

ENTRYPOINT ["glagol-server"]
CMD ["daemon"]
