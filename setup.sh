#!/bin/sh

# setup.sh
# ref. http://github.com/yuroyoro/dotfiles

DOTFILES=( .bashrc .gemrc .inputrc .irbrc .vimrc .zshrc .gitconfig .gitignore-global )

for dotfile in ${DOTFILES[@]}
do
  ln -Fis $HOME/dotfiles/$dotfile $HOME/$dotfile
done
