#!/bin/bash

function backup_phpini() {
  echo 'Backup php.ini'
	echo '======================================='
  sudo cp /etc/php5/cli/php.ini /etc/php5/cli/php.ini_backup
}

function install_php_intl() {
  sudo apt-get install php5-intl
}
function quit() {
  echo 'Completed setting PHP up!
	=============================================
	'
	exit 0
}

backup_phpini
install_php_intl
