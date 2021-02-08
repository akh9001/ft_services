#!/bin/sh
rc-status
touch /run/openrc/softlevel
echo "hello"
rc-service nginx restart
/bin/sh
