#!/bin/sh -l

sudo apt-get instal -qq clang-tidy

which clang-tidy

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
