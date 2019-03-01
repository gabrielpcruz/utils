#!/bin/bash

sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade

sudo apt-get install software-properties-common python-software-properties curl

sudo apt-get install apache2

sudo add-apt-repository -y ppa:ondrej/php && sudo apt-get update

sudo apt-get install php7.3-cli libapache2-mod-php7.3 php7.3-mysql php7.3-curl php-memcached php7.3-dev php7.3-sqlite3 php7.3-mbstring php7.3-gd php7.3-json php7.3-intl

sudo apt install curl

curl -sS https://getcomposer.org/installer | php

sudo mv composer.phar /usr/local/bin/composer

sudo apt-get install mysql-server mysql-client

sudo apt install mysql-workbench

sudo snap install phpstorm --classic

sudo apt install git
