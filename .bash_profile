#--------------------------------------------------
# Author: Chris J. Lee
#--------------------------------------------------

# Ubuntu Shortcuts
###################################################
# Setup Exports
export EDITOR='nano'

# Setup Paths
export DRUSH='~/.drush/'
export WS="/home/$USER/workspace/"

# List Shortcuts
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls -a --color=always'
alias _='cd -'

# Shortcuts for System Processes
alias s="source"
alias o="nautilus"
alias open="nautilus"

# Shortcuts for Editors
alias e='$EDITOR'
alias v="vim"

# System Files shortcuts

alias hosts='sudo $EDITOR /etc/hosts'
alias profile='sudo $EDITOR ~/.bash_profile'
alias profile.s='source ~/.bash_profile'

# Xampp Shortcuts
###################################################

export LAMPP='/opt/lampp'

alias xampp="sudo $LAMPP/lampp"
alias xampp.conf="sudo $EDITOR $LAMPP/etc/httpd.conf"
alias xampp.custom="sudo $EDITOR $LAMPP/etc/extra/httpd-custom.conf"

alias xampp.restart="sudo $LAMPP/lampp restart"
alias xampp.start="sudo $LAMPP/lampp start"
alias xampp.stop="sudo $LAMPP/lampp stop"

alias mysql='$LAMPP/bin/mysql'
alias mysqladmin='$LAMPP/bin/mysqladmin'
alias mysqldump='$LAMPP/bin/mysqldump'

alias php='$LAMPP/bin/php'

# System Files shortcuts

alias hosts='sudo $EDITOR /etc/hosts'
alias profile='sudo $EDITOR ~/.bash_profile'
alias profile.s='source ~/.bash_profile'

# Shortcuts
alias web='cd $WS'

alias go.vhosts="pushd /opt/lampp/etc/extra/hosts"

# System Folder Shortcuts
alias dt='pushd /home/$USER/Desktop'

#
# Change the Bash PS in ~/.prompt file
##################################################

source ~/.prompt
source ~/.bash_path # Shortcut for common folders
