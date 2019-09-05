#!/bin/bash
# wget https://raw.githubusercontent.com/raultm/setup-mrbs/master/01_Ubuntu18_LAMP_mrbs.sh && sh ./01_Ubuntu18_LAMP_mrbs.sh && rm ./01_Ubuntu18_LAMP_mrbs.sh


# APT
apt-get update

# MySQL & php-mysql
apt-get install -y mysql-client-5.7 mysql-client-core-5.7 mysql-common mysql-server mysql-server-5.7 mysql-server-core-5.7 php-mysql

# APACHE
apt-get install -y apache2 apache2-bin apache2-data apache2-utils libapache2-mod-php

# PHP
apt-get install -y libapache2-mod-php php-common php-cli php-common php-json php-ldap php-mysql php-opcache php-readline

# Tras instalar modulos php reiniciar apache
service apache2 restart

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
