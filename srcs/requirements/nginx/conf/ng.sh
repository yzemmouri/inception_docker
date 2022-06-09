sed -i '/date.timezone/c date.timezone = America/Chicago'  /etc/php/7.3/fpm/php.ini
sed -i '/upload_max_filesize/c upload_max_filesize = 32M'  /etc/php/7.3/fpm/php.ini
sed -i '/max_execution_time/c max_execution_time = 300'  /etc/php/7.3/fpm/php.ini
sed -i '/listen = /run/php/php7.3/c listen = 9000'  /etc/php/7.3/fpm/php.ini
sed -i '/post_max_size/c post_max_size = 64M'  /etc/php/7.3/fpm/php.ini
/etc/init.d/php7.3-fpm start 