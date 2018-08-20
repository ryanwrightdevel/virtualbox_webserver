#!/usr/bin/env bash
sudo apt update

sudo apt install git vim -y
sudo apt install openssh-server -y
sudo apt install apache2 -y
sudo apt install curl -y
sudo apt install mysql-server -y

sudo apt install php libapache2-mod-php php-mysql -y
sudo apt install php-cli -y
sudo apt install gcc make perl -y

#allow the ability to connect to mysql using a password.
#set password for root as 'root'
sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';"
sudo mysql -e "FLUSH PRIVILEGES"