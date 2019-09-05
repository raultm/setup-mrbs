#!/bin/bash
# bash <(curl -s https://raw.githubusercontent.com/raultm/setup-mrbs/master/setup-mrbs-ubuntu18.sh)


# APT
apt-get update

# MySQL & php-mysql
apt-get install mysql-client-5.7 mysql-client-core-5.7 mysql-common mysql-server mysql-server-5.7 mysql-server-core-5.7 php-mysql

# APACHE
apt-get install apache2 apache2-bin apache2-data apache2-utils libapache2-mod-php

# PHP
apt-get install libapache2-mod-php php-common php-cli php-common php-json php-ldap php-mysql php-opcache php-readline

# MRBS
wget https://github.com/raultm/setup-mrbs/raw/master/mrbs-1.7.3.tar.gz
tar -xvf mrbs-1.7.3.tar.gz
mv mrbs-1.7.3/web/* /var/www/html

# SETUP MRBS TABLES
mysqladmin create mrbs
mysql mrbs < mrbs-1.7.3/tables.my.sql
mysql -e "CREATE USER 'mrbs'@'localhost' IDENTIFIED BY 'mrbs-password';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'mrbs'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"

# MRBS CONFIG FILE
cp /var/www/html/config.inc.php-sample /var/www/html/config.inc.php
# https://stackoverflow.com/questions/11245144/replace-whole-line-containing-a-string-using-sed
sed -i '/Europe\/London/c\$timezone = "Europe\/Madrid";' /var/www/html/config.inc.php
