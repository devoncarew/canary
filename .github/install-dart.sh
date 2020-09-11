#!/bin/bash

# Fast fail the script on failures.
set -ex

BOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

pwd

echo "hello world"

echo Installing Dart on #{os}

# sh.cmd "curl --connect-timeout 15 --retry 5 #{archive_url}/sdk/dartsdk-#{os}-x64-release.zip > ${TRAVIS_HOME}/dartsdk.zip"
# sh.cmd "unzip ${TRAVIS_HOME}/dartsdk.zip -d ${TRAVIS_HOME} > /dev/null"
# sh.cmd "rm ${TRAVIS_HOME}/dartsdk.zip"
# sh.cmd 'export DART_SDK="${TRAVIS_HOME}/dart-sdk"'
# sh.cmd 'export PATH="$DART_SDK/bin:$PATH"'
# sh.cmd 'export PATH="${TRAVIS_HOME}/.pub-cache/bin:$PATH"'


# const dartChannel = core.getInput("channel", { required: true });
# const releaseType = dartChannel === "be" ? "raw" : "release";
# const url = `https://storage.googleapis.com/dart-archive/channels/${dartChannel}/${releaseType}/latest/sdk/dartsdk-${dartOS}-x64-release.zip`;

# const dartZipPath = await tc.downloadTool(url);

# // TODO: Cache?
# // https://github.com/actions/toolkit/tree/master/packages/tool-cache
# const dartSdkPath = await tc.extractZip(dartZipPath);
