#!/bin/bash

function backup_phpini() {
  echo 'Backing up php.ini...'
  if [ ! -f /etc/php5/cli/php.ini_backup ]; then
    sudo cp /etc/php5/cli/php.ini /etc/php5/cli/php.ini_backup
  else
	  echo 'php.ini already backed up...'
  fi
}

function install_php_intl() {
  echo 'Installing php_intl for ubuntu...'
  sudo apt-get install php5-intl > /dev/null
	echo '...Completed php_intl for ubuntu'
}

function quit() {
  echo '...Completed PHP setup!'
	exit 0
}

function setup_time() {
  echo 'Setting up timezone...'
  sudo cp time.ini /etc/php5/conf.d
}

backup_phpini
setup_time
install_php_intl
quit
