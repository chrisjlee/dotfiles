#!/bin/bash
#
# Installation instructions in README.txt 
# http://drupalcode.org/project/drush.git/blob_plain/HEAD:/README.txt
#
echo "Cloning Drush into $HOME"
git clone --recursive --branch 7.x-4.x http://git.drupal.org/project/drush.git .$HOME/drush
sudo mv ./$HOME/drush /etc/drush
sudo chmod u+x /etc/drush/drush.php
echo "Changing Permissions of '/etc/drush/drush.php'"
ln -s /etc/drush/drush /usr/bin/drush

