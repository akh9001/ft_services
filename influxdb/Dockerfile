FROM alpine:3.11
RUN apk update
RUN apk add influxdb wget
RUN apk add vim curl
RUN apk add openrc bash
# telegraf is in community repository and apk by default use main repository so we had to specify community edge repository
RUN apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

# RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.17.0_linux_amd64.tar.gz &&\
# tar xf telegraf-1.17.0_linux_amd64.tar.gz && rm telegraf-1.17.0_linux_amd64.tar.gz

RUN mkdir -p /etc/telegraf
COPY telegraf.conf /etc/telegraf
COPY start.sh /
COPY health.sh /
CMD ["sh", "start.sh"]