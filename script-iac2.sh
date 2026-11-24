#!/bin/bash

echo "atualizando apt-get..."
apt-get update
apt-get upgrade -y

echo "instalando apache e unzip..."
apt-get install apache2 -y
apt-get install unzip -y

echo "baixando site do github..."
# download do site
cd /tmp
mkdir site
cd site
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

