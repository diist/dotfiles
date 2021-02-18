#!/bin/bash

dotfiles="${HOME}/dotfiles"

rm ~/.vimrc \
   ~/.bash_profile \
   ~/.aliases.sh \
   ~/.starship.toml \
   ~/.vim \
   || true

ln -s ${dotfiles}/cfg/bash/bash_profile ~/.bash_profile
ln -s ${dotfiles}/cfg/bash/aliases.sh ~/.aliases.sh
ln -s ${dotfiles}/cfg/bash/starship.toml ~/.starship.toml
ln -s ${dotfiles}/cfg/vimrc ~/.vimrc
ln -s ${dotfiles}/cfg/vim ~/.vim
