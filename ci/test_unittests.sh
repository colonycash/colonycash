#!/usr/bin/env bash

# This script is executed inside the builder image

set -e

source ./ci/matrix.sh

if [ "$RUN_TESTS" != "true" ]; then
  echo "Skipping unit tests"
  exit 0
fi

# TODO this is not Travis agnostic
export BOOST_TEST_RANDOM=1$TRAVIS_BUILD_ID
export LD_LIBRARY_PATH=$BUILD_DIR/depends/$HOST/lib

export WINEDEBUG=fixme-all
export BOOST_TEST_LOG_LEVEL=test_suite

cd build-ci/colonycashcore-$BUILD_TARGET
if [ "$DIRECT_WINE_EXEC_TESTS" = "true" ]; then
  # Inside Docker, binfmt isn't working so we can't trust in make invoking windows binaries correctly
  wine ./src/test/test_colonycash.exe
else
  make $MAKEJOBS check VERBOSE=1
fi
