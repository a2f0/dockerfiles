#!/bin/sh
#docker build -t ubuntu-dokuwiki .
#docker run -p 80:80 -d ubuntu-dokuwiki
#docker-compose up
source init-env.sh
docker run --cap-add SYS_ADMIN --device /dev/fuse -t -i \
  -e AWSACCESSKEYID=$S3FS_USER \
  -e AWSSECRETACCESSKEY=$S3FS_PASS \
  -h dokuwiki \
  -p 80:80 \
  --name=dokuwiki \
  ubuntu-dokuwiki
