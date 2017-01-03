#!/bin/sh
docker run -t -i \
  --link=dokuwiki \
  --name=apache \
  ubuntu-apache
