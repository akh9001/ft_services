#! /bin/sh

ps | grep -v grep | grep vsftpd
return=$?
if [ $return -ne 0 ]; 
then
	exit $return
fi