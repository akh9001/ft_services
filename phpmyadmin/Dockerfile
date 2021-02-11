FROM alpine:3.11
RUN apk update
RUN apk add nginx
RUN apk add openrc --no-cache
RUN apk add vim wget curl unzip
RUN apk add php7 php7-fpm php7-mysqli php7-mbstring php7-json php7-session
COPY nginx.conf /etc/nginx/nginx.conf
COPY phpmyadmin.sh /
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-all-languages.zip
RUN unzip phpMyAdmin-5.0.1-all-languages.zip
RUN mv phpMyAdmin-5.0.1-all-languages /var/www/phpmyadmin
RUN rm -rf phpMyAdmin-5.0.1-all-languages.zip
CMD ["sh", "phpmyadmin.sh"]
EXPOSE 5000
