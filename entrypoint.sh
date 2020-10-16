#!/bin/sh -l

sudo apt-get instal -qq clang-tidy

clang-tidy --version

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
