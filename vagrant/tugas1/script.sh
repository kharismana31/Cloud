#!/usr/bin/env bash
apt-get update
apt-get install -y apache2
apt-get -y install php7.0 libapache2-mod-php7.0
sed -i 's/;opcache.enable=0/opcache.enable=1/g' /etc/php/7.0/apache2/php.ini
