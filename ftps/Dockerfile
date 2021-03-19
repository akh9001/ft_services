FROM alpine:3.11
RUN apk update
RUN apk add vsftpd 
# lftp
#openssl : allows us to create the certs
RUN apk add vim openssl 
#openrc is a package,it contains rc-service tools which allows us to start nginx
RUN apk add openrc --no-cache
#RUN rm -rf /etc/nginx/conf.d/default.conf
# COPY vsftpd.conf /etc/vsftpd/vsftpd.conf
#this cmd create the ssl certificate and place it in /etc/ssl/certs directory
RUN yes "" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem
COPY vsftpd.conf /etc/vsftpd/
COPY ftps.sh /
COPY health.sh /
EXPOSE 20
EXPOSE 21
# CMD ["sh", "/ftps.sh"]
ENTRYPOINT sh ftps.sh