FROM debian:stretch
LABEL maintainer="ColonyCash Developers <dev@colony-cash.com>"
LABEL description="Dockerised ColonyCashCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
