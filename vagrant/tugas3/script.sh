#!/usr/bin/env bash
apt-get update
apt-get install -y apache2
apt-get -y install php7.0 libapache2-mod-php7.0
apt-get install -y unzip
cd /var/www/
sudo git clone https://kharismana31:aptx4869@github.com/bcit-ci/CodeIgniter.git
#wget https://github.com/bcit-ci/CodeIgniter/archive/3.0.6.zip
#unzip 3.0.6.zip
#mv CodeIgniter-3.0.6 CodeIgniter
sed -i 's/DocumentRoot \/var\/www\/html/DocumentRoot \/var\/www\/CodeIgniter/g' /etc/apache2/sites-available/000-default.conf
service apache2 restart
