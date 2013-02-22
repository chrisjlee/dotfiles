#!/bin/bash
echo "=============================="
echo "   Setting up .dotfiles"
echo "=============================="

function quit() {
  unset DOTFILES
  exit 0
}

if [ -d $HOME/.dotfiles ]; then
  DOTFILES="$HOME/.dotfiles"
else
  echo "Please move dotfiles to $DOTFILES/.dotfiles"
  quit 
fi

function setup_bash_files() {
  for filename in "$DOTFILES/.bash_*"
  do
    cp -vf $filename $HOME
  done
}

setup_bash_files

# Copy over vim files
cp -rv $DOTFILES/.vim* $HOME
# Copy over gitconfig files
cp -fv $DOTFILES/.gitc* $HOME
# Copy over zsh files
cp -fv $DOTFILES/.zsh_* $HOME


# Done
quit

