#!/usr/bin/env bash
sudo apt update

sudo apt install git vim -y
sudo apt install openssh-server -y
sudo apt install apache2 -y
sudo apt install curl -y
sudo apt install mysql-server -y
sudo apt install zip

sudo apt install php libapache2-mod-php php-mysql -y
sudo apt install php-cli -y
sudo apt install gcc make perl -y

sudo apt php-xml php-dom php-gd -y

#allow the ability to connect to mysql using a password.
#set password for root as 'root'
sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';"
sudo mysql -u root -proot -e "FLUSH PRIVILEGES"


#####################################################################################
#####################################################################################
#INSTALL COMPOSER
EXPECTED_SIGNATURE="$(wget -q -O - https://composer.github.io/installer.sig)"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_SIGNATURE="$(php -r "echo hash_file('SHA384', 'composer-setup.php');")"

if [ "$EXPECTED_SIGNATURE" != "$ACTUAL_SIGNATURE" ]
then
    >&2 echo 'ERROR: Invalid installer signature'
    rm composer-setup.php
    #exit 1
else
    php composer-setup.php --quiet
    RESULT=$?
    rm composer-setup.php
    #exit $RESULT
fi

