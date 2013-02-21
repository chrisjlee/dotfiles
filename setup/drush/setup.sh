#!/bin/bash
#
# Installation instructions in README.txt 
# http://drupalcode.org/project/drush.git/blob_plain/HEAD:/README.txt
#
echo "Cloning Drush into $HOME"
git clone --recursive --branch 7.x-4.x http://git.drupal.org/project/drush.git $HOME/drush > /dev/null
sudo mv $HOME/drush /etc/drush
sudo chmod u+x /etc/drush/drush.php
echo "Changing Permissions of '/etc/drush/drush.php'"
sudo ln -s /etc/drush/drush.php /usr/bin/drush
pushd '/etc/drush/'
echo '
===================================================================
Drush Install complete!

Now checkout with git the latest tag
==================================================================='
popd '/etc/drush/'
exit 0
