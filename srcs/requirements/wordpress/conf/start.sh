#!/bin/sh

# Set the Database Credentials
sed -i 's|DOMAIN_NAME|'${DOMAIN_NAME}'|g' /var/www/html/wordpress/wp-config.php
sed -i 's|DATABASE_NAME|'${DATABASE_NAME}'|g' /var/www/html/wordpress/wp-config.php
sed -i 's|DATABASE_USER|'${DATABASE_USER}'|g' /var/www/html/wordpress/wp-config.php
sed -i 's|DATABASE_PASS|'${DATABASE_PASS}'|g' /var/www/html/wordpress/wp-config.php
sed -i 's|DATABASE_HOST|'${DATABASE_HOST}'|g' /var/www/html/wordpress/wp-config.php

# This is a variant of PHP that will run in the background as a daemon, listening for CGI requests.
php-fpm7 -FR