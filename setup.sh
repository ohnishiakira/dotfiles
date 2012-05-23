#!/bin/sh

# setup.sh
# ref. http://github.com/yuroyoro/dotfiles

DOTFILES=( .bashrc .gemrc .inputrc .irbrc .vimrc .zshrc )

for dotfile in ${DOTFILES[@]}
do
  ln -Fis $HOME/dotfiles/$file $HOME/$file
done
