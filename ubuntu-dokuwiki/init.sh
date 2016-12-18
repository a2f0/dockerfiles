#!/bin/sh
docker build -t ubuntu-dokuwiki .
#docker run -p 80:80 -d ubuntu-dokuwiki
docker-compose up
