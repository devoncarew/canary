#!/bin/bash

# Fast fail the script on failures.
set -ex

# Install webdev.
pub global activate webdev

# Ensure the build packages can solve against the SDK.
pub get

# Ensure that the project analyses cleanly.
dartanalyzer --fatal-infos .

# Drive a build.
webdev build

# Also perform a build through build_runner.
pub run build_runner build
