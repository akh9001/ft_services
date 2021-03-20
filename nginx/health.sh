#! /bin/sh

ps | grep -v grep | grep nginx
return=$?
ps | grep -v grep | grep sshd
ret=$?
if [ $return -ne 0 -o $ret -ne 0 ]; 
then
	exit 1
fi