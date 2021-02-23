#!/bin/sh
rc-status
touch /run/openrc/softlevel
mysql_install_db --user=mysql --datadir=/var/lib/mysql > /dev/null
/etc/init.d/mariadb setup
# start mariadb, you can also start it using : rc-service mariadb start
/etc/init.d/mariadb start
#create a database, a user and grant him permission
mysql -u root -e "CREATE DATABASE wp_db"
mysql -u root -e "CREATE USER 'admin_mysql'@'localhost' IDENTIFIED BY '@dm1n'"
mysql -u root -e  "GRANT ALL PRIVILEGES ON *.* TO 'admin_mysql'@'%' IDENTIFIED BY '@dm1n'"
mysql -u root -e "FLUSH PRIVILEGES;";
mysql -uroot  wp_db < wp_db.sql
sleep infinity
#/bin/sh