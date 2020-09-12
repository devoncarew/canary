#!/bin/bash

# Fast fail the script on failures.
set -ex

pub global activate stagehand

# console-simple
mkdir console-simple; pushd console-simple
stagehand console-simple
pub get
dartanalyzer --fatal-infos .
dart bin/console_simple.dart
popd

# console-full
mkdir console-full; pushd console-full
stagehand console-full
pub get
dartanalyzer --fatal-infos .
dart bin/console_full.dart
popd

# package-simple
mkdir package-simple; pushd package-simple
stagehand package-simple
pub get
dartanalyzer --fatal-infos .
popd

# web-simple
mkdir web-simple; pushd web-simple
stagehand web-simple
pub get
dartanalyzer --fatal-infos .
pub run build_runner build
popd
