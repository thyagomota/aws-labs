#!/bin/bash
yum update -y
yum install httpd -y
systemctl enable httpd
systemctl start httpd
cd /var/www/html
echo "This is INSTANCE ${HOSTNAME}" > index.html
