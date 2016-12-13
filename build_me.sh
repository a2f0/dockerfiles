#!/bin/bash

images=(
  ubuntu-base
  ubuntu-apache
  ubuntu-dokuwiki
  ubuntu-rbenv
)

for x in "${images[@]}"
do
  cd $x
  docker build -t $x .
  cd ..
done
docker images
