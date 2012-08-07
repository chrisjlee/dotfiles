#!/bin/bash
echo "=============================="
echo "   Setup .dotfiles"
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

for filename in "$DOTFILES/.bash_*"
do
  sudo cp -vf $filename $HOME
done

sudo cp -rv $DOTFILES/.vim* $HOME
sudo cp -v $DOTFILES/.gitc* $HOME
sudo cp -v $DOTFILES/.giti* $HOME

quit

