#!/bin/bash

service mariadb start

sleep 2

mariadb -e "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME;"
mariadb -e "CREATE USER IF NOT EXISTS '$USER_NAME'@'%' IDENTIFIED BY '$USER_PASSWORD';"
mariadb -e "GRANT ALL PRIVILEGES ON $DATABASE_NAME.* TO '$USER_NAME'@'%';"
mariadb -e "FLUSH PRIVILEGES;"
mariadb -e "SHUTDOWN;"

exec "$@"