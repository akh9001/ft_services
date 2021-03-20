FROM alpine:3.11
RUN apk update
RUN apk add nginx
RUN apk add openrc --no-cache
RUN apk add vim wget curl
RUN wget https://wordpress.org/latest.tar.gz
RUN apk add php7 php7-fpm php7-mysqli php7-mbstring php7-json php7-session
COPY nginx.conf /etc/nginx/conf.d/nginx.conf
RUN tar -xvf latest.tar.gz -C /var/www/
RUN rm -rf latest.tar.gz
COPY start.sh /
COPY health.sh /
COPY wp-config.php /var/www/wordpress/wp-config.php
CMD ["sh", "start.sh"]
EXPOSE 5000 
