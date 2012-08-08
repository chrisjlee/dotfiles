#!/bin/bash
sudo apt-get install php5-dev php-pear libpcre3-dev
echo 'extension=apc.so' | sudo tee -a /etc/php5/apache2/conf.d/apc.ini
