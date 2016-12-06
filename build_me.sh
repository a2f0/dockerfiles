#!/bin/bash
for x in ubuntu-base ubuntu-apache; do
  cd $x
  docker build -t $x .
  cd ..
done
docker images
