#!/bin/bash
rc-update add nginx
mkdir /run/openrc/
touch /run/openrc/softlevel
/usr/sbin/nginx -g "daemon off;"  &
