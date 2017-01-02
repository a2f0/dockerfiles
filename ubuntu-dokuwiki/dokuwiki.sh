#!/bin/sh
set -e
#https://github.com/docker-library/httpd/tree/master/2.4

# Apache gets grumpy about PID files pre-existing
#rm -f /usr/local/apache2/logs/httpd.pid

#exec httpd -DFOREGROUND
#apachectl -e info -DFOREGROUND
#exec /usr/sbin/apache2ctl -D FOREGROUND

mkdir -p /mnt/dansullivan-io-backup && s3fs -d dansullivan-io-backup /mnt/dansullivan-io-backup/
bash
