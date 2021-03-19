#!/bin/sh
rc-status
touch /run/openrc/softlevel
echo -e "root@1999\nroot@1999" | passwd root
echo -e "asmaa@1999\nasmaa@1999" | adduser asmaa
service vsftpd start
# tail -f /dev/null
sleep infinity