#!/bin/bash

dotfiles="${HOME}/code/github.com/diist/dotfiles"

rm ~/.vimrc \
   ~/.zshrc \
   ~/.vim \
   ~/.gitconfig/.gitconfig

ln -s ${dotfiles}/cfg/gitconfig ~/.gitconfig
ln -s ${dotfiles}/cfg/zshrc ~/.zshrc
ln -s ${dotfiles}/cfg/vimrc ~/.vimrc
ln -s ${dotfiles}/cfg/vim ~/.vim
