#!/bin/bash

chown -R www-data:www-data /var/www/*;
chmod -R 755 /var/www/*;
mkdir -p /run/php/;
touch /run/php/php7.4-fpm.pid;

if [ ! -f /var/www/html/wp-config.php ]; then
    mkdir -p /var/www/html;
    cd /var/www/html;

    wp core download --allow-root;

    wp config create --allow-root \
        --dbname=$DATABASE_NAME \
        --dbuser=$USER_NAME \
        --dbpass=$USER_PASSWORD \
        --dbhost=mariadb;

    echo "Success: WordPress installation has started. Wait until the installation is completed."

    wp core install --allow-root \
        --url=$URL \
        --title=$TITLE \
        --admin_user=$ADMIN_NAME \
        --admin_password=$ADMIN_PASSWORD \
        --admin_email=$ADMIN_EMAIL;

    wp user create --allow-root \
        $USER_NAME $USER_EMAIL \
        --user_pass=$USER_PASSWORD;
fi

echo "Success: You can visit $URL in your browser."

exec "$@"