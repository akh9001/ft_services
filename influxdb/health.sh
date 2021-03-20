#! /bin/sh

ps | grep -v grep | grep influxd
return=$?
ps | grep -v grep | grep telegraf
ret=$?
if [ $return -ne 0 -o $ret -ne 0 ]; 
then
	exit 1
fi