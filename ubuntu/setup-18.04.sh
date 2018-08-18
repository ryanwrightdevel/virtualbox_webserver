#!/usr/bin/env bash
sudo apt update

sudo apt install openssh-server -y
sudo apt install apache2 -y
sudo apt install curl -y
sudo apt install mysql-server -y

sudo apt install php libapache2-mod-php php-mysql -y
sudo apt install php-cli -y
sudo apt install gcc make perl -y