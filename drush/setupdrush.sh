#!/bin/bash

git clone --recursive --branch 7.x-4.x http://git.drupal.org/project/drush.git ./$HOME/drush
sudo mv ./$HOME/drush /etc/drush
sudo chmod u+x /etc/drush/drush.php
echo "Changing Permissions of '/etc/drush/drush.php'"
ln -s /etc/drush/drush /usr/bin/drush

