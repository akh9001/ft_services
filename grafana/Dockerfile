FROM alpine:3.11
RUN apk update
RUN apk add vim wget
RUN wget https://dl.grafana.com/oss/release/grafana-7.4.3.linux-amd64.tar.gz
RUN tar -zxvf grafana-7.4.3.linux-amd64.tar.gz
RUN rm -rf grafana-7.4.3.linux-amd64.tar.gz
RUN mv grafana-7.4.3 grafana 
RUN apk add libc6-compat
COPY start.sh /
COPY health.sh /
COPY grafana.db grafana/data/grafana.db 
CMD ["sh", "start.sh"]
EXPOSE 3000 
