#!/bin/sh -l

sudo apt-get instal -qq clang-tidy

echo "Hello World from entrypoint"

which ls
echo "Post ls"

which clang-tidy
echo "Post clang-tidy"

which clang++
echo "Post clang++"

# echo "Hello $1"
# time=$(date)
# echo "::set-output name=time::$time"
