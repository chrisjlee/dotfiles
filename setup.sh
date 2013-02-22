#!/bin/bash
echo "=============================="
echo "   Setting up .dotfiles"
echo "=============================="

function quit() {
  unset DOTFILES
  exit 0
}

# Setup dotfiles
if [ -d $HOME/.dotfiles ]; then
  DOTFILES="$HOME/.dotfiles"
else
  echo "[ERROR] Please move dotfiles to $DOTFILES/.dotfiles and rerun setup"
  quit 
fi

function setup_bash_files() {
  for filename in "$DOTFILES/.bash_*"
  do
    cp -vf $filename $HOME
  done
}

# Setup ssh files and copy over templates
function setup_ssh_files() {
  if [ ! -f $HOME/.ssh ]; then
    mkdir "$HOME/.ssh"
  fi
  if [ ! -f $HOME/.ssh/config ]; then
    cp $DOTFILES/config $HOME
  fi
  if [ ! -f $HOME/example-config ]; then
    cp $DOTFILES/example-config $HOME
  fi
}

# Copy over vim files
function setup_vim_files() {
  cp -rv $DOTFILES/.vim* $HOME
}
# Copy over gitconfig files
function setup_git_files () {
  cp -fv $DOTFILES/.gitc* $HOME
}
# Copy over zsh files
function setup_zsh_files() {
  cp -fv $DOTFILES/.zsh_* $HOME
}

setup_bash_files
setup_ssh_files
setup_vim_files
setup_zsh_files

# Done
quit

