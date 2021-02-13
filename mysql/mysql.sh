#!/bin/sh
rc-status
touch /run/openrc/softlevel
/etc/init.d/mariadb setup
# start mariadb, you can also start it using : rc-service mariadb start
/etc/init.d/mariadb start
/bin/sh