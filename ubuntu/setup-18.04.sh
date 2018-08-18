#!/usr/bin/env bash
sudo apt-get update

sudo apt-get install openssh-server -y
sudo apt install apache2 -y
sudo apt-get install curl -y
sudo apt install mysql-server -y

sudo apt install php libapache2-mod-php php-mysql -y
sudo apt install php-cli -y