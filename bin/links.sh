#!/bin/bash

dotfiles="${HOME}/dotfiles"

rm ~/.vimrc \
   ~/.zshrc \
   ~/.vim \
   || true

ln -s ${dotfiles}/cfg/zshrc ~/.zshrc
ln -s ${dotfiles}/cfg/vimrc ~/.vimrc
ln -s ${dotfiles}/cfg/vim ~/.vim
