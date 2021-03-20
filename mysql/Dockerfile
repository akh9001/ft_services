FROM alpine:3.11
RUN apk update
RUN apk add vim curl
RUN apk add openrc --no-cache
RUN apk add mysql mysql-client
COPY mariadb-server.cnf /etc/my.cnf.d
COPY start.sh /
COPY wp_db.sql /
COPY phpmyadmin.sql /
COPY health.sh /
CMD ["sh", "start.sh"]