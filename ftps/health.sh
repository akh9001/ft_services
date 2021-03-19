#!/bin/sh
ps | grep -v grep | grep vsftpd
$ret=$?
val=`ps`
if [ "vsftpd" =~ val]
then 
    exit 1
fi