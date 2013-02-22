#/bin/bash

function quit {
  echo "Aborting..."
  unset DOTFILES
  exit 0
}

function setup() {
  if [ -d $HOME/.dotfiles ]; then
    DOTFILES="$HOME/.dotfiles"
  else
    echo "Please move dotfiles to $DOTFILES/.dotfiles"
    quit
  fi
}


#--------------------------------
#  Copy and source files
#---------------------------------
function update {
  cp $DOTFILES/.zsh_alias
  cp $DOTFILES/.bash_alias
  source $HOME/.zsh_alias
  source $HOME/.bash_alias
}


function prompt_update() {
  echo -n "Would you like to update .dotfiles? [y/n] [n]:"
  read $prompt
  if [ "$prompt! == "y" ]; then
    update
  else
    echo "Aborting"
  fi
}

#---------------------------------
#  Main functions
#---------------------------------

# Work in progress... currently doesn't do anything
echo 'Nothing to see. This file is still WIP'
# setup
# prompt_update
