#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-colonycashpay/colonycashd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/colonycashd docker/bin/
cp $BUILD_DIR/src/colonycash-cli docker/bin/
cp $BUILD_DIR/src/colonycash-tx docker/bin/
strip docker/bin/colonycashd
strip docker/bin/colonycash-cli
strip docker/bin/colonycash-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
