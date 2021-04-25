#!/bin/bash

set -e

images=(
  amazonlinux
  raspbian
  ubuntu-base # needs to be buit first
  ubuntu-apache
  ubuntu-rbenv
)

for x in "${images[@]}"
do
  echo "=== building $x"
  cd $x
  docker build -t $x .
  cd ..
done
docker images
