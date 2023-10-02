#!/bin/bash

dotfiles="${HOME}/dotfiles"

rm ~/.vimrc \
   ~/.zshrc \
   ~/.aliases.sh \
   ~/.starship.toml \
   ~/.vim \
   || true

ln -s ${dotfiles}/cfg/zshrc ~/.zshrc
ln -s ${dotfiles}/cfg/aliases.sh ~/.aliases.sh
ln -s ${dotfiles}/cfg/starship.toml ~/.starship.toml
ln -s ${dotfiles}/cfg/vimrc ~/.vimrc
ln -s ${dotfiles}/cfg/vim ~/.vim
