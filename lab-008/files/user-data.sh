#!/bin/bash
yum update -y
amazon-linux-extras install epel -y
yum install stress -y
yum install httpd -y
systemctl enable httpd
systemctl start httpd
cd /var/www/html
echo "This is INSTANCE ${HOSTNAME}" > index.html
