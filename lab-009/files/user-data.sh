#!/bin/bash
yum update -y
amazon-linux-extras install php7.2 -y
yum install httpd -y
cd /var/www/html
wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz
systemctl enable httpd
systemctl start httpd
