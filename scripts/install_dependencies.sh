#!/bin/bash

exec 3>&1 4>&2
trap 'exec 2>&4 1>&3' 0 1 2 3
exec 1>/home/ubuntu/out.log 2>&1

if [ -d /var/www/html ]; then
    rm -rf /var/www/html
fi
mkdir -vp /var/www/html

apt-get install -y apache2

