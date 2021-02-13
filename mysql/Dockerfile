FROM alpine:3.11
RUN apk update
RUN apk add vim curl
RUN apk add openrc --no-cache
RUN apk add mysql mysql-client
COPY mysql.sh /
CMD ["sh", "mysql.sh"]