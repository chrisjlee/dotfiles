#!/bin/bash
echo "=============================="
echo "   Setup .dotfiles"
echo "=============================="

for filename in "$PWD/.bash_*"
do
  cp -vf "$filename" $HOME
done
