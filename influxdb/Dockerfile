FROM alpine:3.11
RUN apk update
RUN apk add influxdb
RUN apk add vim curl
RUN apk add openrc --no-cache
# telegraf is in community repository and apk by default use main repository so we had to specify community edge repository
RUN apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community
COPY influxdb.sh /
CMD ["sh", "influxdb.sh"]