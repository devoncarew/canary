#!/bin/bash

# Fast fail the script on failures.
set -ex

echo "hello world"

echo Installing Dart ${DART_VERSION}

curl --connect-timeout 15 --retry 5 \
  https://storage.googleapis.com/dart-archive/channels/${DART_VERSION}/sdk/dartsdk-linux-x64-release.zip > dartsdk.zip
unzip dartsdk.zip -d dart-sdk > /dev/null
rm dartsdk.zip

./dart-sdk/bin/dart --version
