#!/bin/bash

images=(
  amazonlinux
  raspbian
  ubuntu-apache
  ubuntu-base
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
