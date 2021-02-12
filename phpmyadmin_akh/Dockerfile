FROM alpine:3.11
RUN apk update
RUN apk add nginx
RUN apk add openrc --no-cache
RUN apk add vim wget curl unzip
RUN apk add php7 php7-fpm php7-mysqli php7-mbstring php7-json php7-session
#RUN apk add php7-common php7-fpm php7-iconv php7-json php7-gd php7-curl php7-session php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom
COPY nginx.conf /etc/nginx/conf.d/nginx.conf
#COPY default.conf /etc/nginx/conf.d
COPY phpmyadmin.sh /
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.zip
RUN unzip phpMyAdmin-5.0.4-all-languages.zip
RUN mv phpMyAdmin-5.0.4-all-languages /var/www/phpmyadmin
RUN rm -rf phpMyAdmin-5.0.4-all-languages.zip
CMD ["sh", "phpmyadmin.sh"]
EXPOSE 5000
