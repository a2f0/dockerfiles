#!/bin/sh
#docker build -t ubuntu-dokuwiki .
#docker run -p 80:80 -d ubuntu-dokuwiki
#docker-compose up
source init-env.sh
docker run -t -i -e S3FS_USER=$S3FS_USER -e S3FS_PASS=$S3FS_PASS ubuntu-apache
