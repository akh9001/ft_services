#!/bin/sh
rc-status
touch /run/openrc/softlevel
rc-service nginx restart
echo -e "asmaa@1999\nasmaa@1999" | adduser asmaa
apk add openssh-server
rc-service sshd start
/bin/sh
