#! /bin/sh

ps | grep -v grep | grep php-fpm7
return=$?
ps | grep -v grep | grep nginx
ret=$?
if [ $return -ne 0 -o $ret -ne 0 ]; 
then
	exit 1
fi