#!/bin/bash
echo "=============================="
echo "   Setup .dotfiles"
echo "=============================="

for filename in "$PWD/.bash_*"
do
  sudo cp -vf "$filename" $HOME
done

sudo cp -rv "$PWD/.vim*" $HOME
sudo cp -v "$PWD/.gitc*" $HOME
sudo cp -v "$PWD/.giti*" $HOME
