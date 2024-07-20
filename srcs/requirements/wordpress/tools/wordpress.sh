#!/bin/bash
mkdir -p /var/www/html
cd /var/www/html
rm -rf *
wp core download --allow-root
mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
mv /wp-config.php /var/www/html/wp-config.php
sed -i -r "s/db1/$db_name/1"   wp-config.php
sed -i -r "s/user/$db_user/1"  wp-config.php
sed -i -r "s/pwd/$db_pass/1"    wp-config.php
sed -i -r "s/mariadb/$wp_db/1"    wp-config.php

wp core install --url=$Domaine/ --title=$wp_title --admin_user=$wp_admin --admin_password=$wp_pass --admin_email=hed@agency.ss --skip-email --allow-root
wp user create $reg_user user@example.com --role=author --user_pass=$reg_pass --allow-root
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf
mkdir /run/php
/usr/sbin/php-fpm7.3 -F
