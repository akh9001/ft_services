#!/bin/sh
rc-status
touch /run/openrc/softlevel
rc-service php-fpm7 start
rc-service nginx restart
# /bin/sh
sleep infinity