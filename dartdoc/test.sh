#!/bin/bash

# Fast fail the script on failures.
set -ex

# Test that dartdoc can install.
pub global activate dartdoc

pub get

# Test that dartdoc can document a package.
pub global run dartdoc
