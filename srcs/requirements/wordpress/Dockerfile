FROM debian:buster-slim

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget
RUN apt-get install -y php7.3
RUN apt-get install -y php7.3-cgi
RUN apt-get install -y php7.3-common
RUN apt-get install -y php7.3-fpm
RUN apt-get install -y php7.3-mbstring
RUN apt-get install -y php7.3-gd
RUN apt-get install -y php7.3-mysql
RUN apt-get install -y php7.3-cli
RUN apt-get install -y unzip

EXPOSE 9000

WORKDIR /etc/php/7.3/fpm
COPY ./conf/php-fpm.sh ./
ENTRYPOINT ["sh", "php-fpm.sh"]

RUN mkdir -p /var/www/html/
WORKDIR /var/www/html/

RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvzf latest.tar.gz
RUN rm -rf latest.tar.gz

WORKDIR /var/www/html/wordpress
RUN rm wp-config-sample.php
COPY ./conf/wp-config.php ./

COPY start.sh ./
CMD ["sh", "start.sh"]

#info
#https://ubuntu.com/tutorials/install-and-configure-wordpress#2-install-dependencies
#https://medium.com/swlh/wordpress-deployment-with-nginx-php-fpm-and-mariadb-using-docker-compose-55f59e5c1a
