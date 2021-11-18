#!/bin/bash
rm -rf /var/www/html/index.html
yum remove -y httpd
yum install -y httpd
chmod 777 /var/www/html
echo "Jenkins-github!!!-colla" >> var/www/html/index.html
systemctl start httpd
