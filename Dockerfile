FROM alpine:3.11
RUN apk update
RUN apk add nginx 
RUN apk add vim openssl curl
RUN apk add openrc --no-cache
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
RUN yes "" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/certs/localhost.key -out /etc/ssl/certs/localhost.crt
COPY nginx.sh /

EXPOSE 80
EXPOSE 443
EXPOSE 22
CMD ["sh", "/nginx.sh"]
