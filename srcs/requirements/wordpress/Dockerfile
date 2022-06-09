
FROM debian:buster
RUN apt-get update \
    && apt-get upgrade -y \
    php-cgi php-common php-fpm php-pear php-mbstring \
    php-zip php-net-socket php-gd php-xml-util \
    php-gettext php-mysql php-bcmath vim curl unzip wget git vim -y 

RUN mkdir -p /var/www/html \
    && chmod 777 /var/www/html
WORKDIR /var/www/html/
RUN wget http://wordpress.org/latest.tar.gz \
    && tar -xzvf latest.tar.gz && rm -rf latest.tar.gz \
    && cp ./wordpress/wp-config-sample.php ./wordpress/wp-config.php
RUN chown -R www-data:www-data /var/www/html/wordpress

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
    RUN chmod +x wp-cli.phar 
    RUN mv wp-cli.phar /usr/local/bin/wp
#   cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php ;
#  touch word.sh;
 COPY ./conf/word.sh /var/www/html/word.sh
 RUN chmod +x /var/www/html/word.sh
#RUN sed -i 's/listen = /run/php/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf
RUN mkdir /run/php/
RUN sed -i '/listen =/c listen = 9000' /etc/php/7.3/fpm/pool.d/www.conf

EXPOSE 9000

 ENTRYPOINT sh /var/www/html/word.sh && sleep 2000

#info
#https://ubuntu.com/tutorials/install-and-configure-wordpress#2-install-dependencies
#https://medium.com/swlh/wordpress-deployment-with-nginx-php-fpm-and-mariadb-using-docker-compose-55f59e5c1a
