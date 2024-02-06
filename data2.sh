#!/bin/bash
sudo yum -y install httpd.x86_64
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
sudo yum -y install git
sudo git clone https://github.com/thudumrakesh/food-.git
sudo mv food-/* /var/www/html/
