#--------------------------------------------------
# Author: Chris J. Lee
#--------------------------------------------------

# Ubuntu Shortcuts
###################################################
# Setup Exports
export EDITOR='nano'

# Setup Paths
export WS="/home/$USER/workspace/"

# List Shortcuts
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls -atr --color=always'
alias _='cd -'

# Shortcuts for System Processes
alias s="source"
alias o="nautilus"
alias open="nautilus"

# Browsers
# alias chrome="/opt/google/chrome/chrome"
# alias ff="/usr/bin/firefox"

# Shortcuts for Editors
alias e='$EDITOR'
alias v="vim"
alias n="nano"

# System Files shortcuts

alias hosts='sudo $EDITOR /etc/hosts'
alias profile='sudo $EDITOR ~/.bash_profile'
alias profile.s='source ~/.bash_profile'

# System Folder Shortcuts
alias dt='pushd /home/$USER/Desktop'
alias dl='pushd /home/$USER/Downloads'

alias ws="pushd $WS"

#
# Change the Bash PS in ~/.prompt file
##################################################

source ~/.prompt
source ~/.bash_path # Shortcut for common folders
