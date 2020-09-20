#!/bin/bash

# Fast fail the script on failures.
set -ex

# Test that devtools can install.
pub global activate devtools

pub get

# TODO: Add additional validation here.
pub global run devtools -h
