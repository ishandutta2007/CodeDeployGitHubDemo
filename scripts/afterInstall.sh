#!/bin/bash

rsync --delete-before --verbose --archive --exclude "htdocs/media/" --exclude ".*" --exclude "htdocs/var/" --exclude "htdocs/app/etc/local.xml" /var/www/release/ /var/www/magento/ > /var/log/deploy.log
