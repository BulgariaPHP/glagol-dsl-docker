FROM openjdk:8-jdk-alpine

MAINTAINER Yoan-Alexander Grigorov <joan.grigorov@gmail.com>

RUN mkdir /usr/local/src \
    && apk --update add --virtual build-dependencies wget openssl

ENV VERSION "0.3.3"

RUN wget -O /usr/local/src/glagol-dsl-server.jar \
    "https://github.com/BulgariaPHP/glagol-dsl/releases/download/${VERSION}/glagol-dsl-server-${VERSION}.jar" \
    && apk del build-dependencies

ADD glagol-server /usr/bin/glagol-server

RUN chmod +x /usr/bin/glagol-server

ENTRYPOINT ["glagol-server"]
CMD ["daemon"]
