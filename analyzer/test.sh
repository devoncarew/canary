#!/bin/bash

# Fast fail the script on failures.
set -ex

# Ensure the package can solve against the SDK.
pub get

# Ensure it analyses cleanly.
dartanalyzer --fatal-infos .

# And, that the CFE / runtime is happy with it.
dart --enable-asserts bin/smoketest.dart
