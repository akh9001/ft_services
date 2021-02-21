FROM alpine:3.11
RUN apk update
RUN apk add nginx
#openssl : allows us to create the certs
RUN apk add vim openssl curl mysql-client
#openrc is a package,it contains rc-service tools which allows us to start nginx
RUN apk add openrc --no-cache
#RUN rm -rf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
#this cmd create the ssl certificate and place it in /etc/ssl/certs directory
RUN yes "" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/certs/localhost.key -out /etc/ssl/certs/localhost.crt
COPY nginx.sh /

EXPOSE 80
EXPOSE 443
EXPOSE 22
CMD ["sh", "/nginx.sh"]
