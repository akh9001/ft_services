#!/bin/sh
rc-status
touch /run/openrc/softlevel
# telegraf --input-filter docker --output-filter influxdb config > /etc/telegraf/telegraf.conf
rc-service influxdb start
# influx -execute "CREATE USER admin WITH PASSWORD 'admin' WITH ALL PRIVILEGES;"
# rc-service telegraf start
telegraf --config /etc/telegraf/telegraf.conf
echo "everything seems to be alright!"
sleep infinity
# /bin/sh