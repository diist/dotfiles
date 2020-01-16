#!/bin/bash

rm ~/.oh-my-zsh/custom/aliases.zsh ~/.oh-my-zsh/custom/exports.zsh ~/.oh-my-zsh/custom/functions.zsh
ln -s ~/dotfiles/cfg/oh-my-zsh/custom/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
ln -s ~/dotfiles/cfg/oh-my-zsh/custom/exports.zsh ~/.oh-my-zsh/custom/exports.zsh
ln -s ~/dotfiles/cfg/oh-my-zsh/custom/functions.zsh ~/.oh-my-zsh/custom/functions.zsh

rm ~/.vimrc ~/.zshrc ~/.vim
ln -s ~/dotfiles/cfg/zshrc ~/.zshrc
ln -s ~/dotfiles/cfg/vimrc ~/.vimrc
ln -s ~/dotfiles/cfg/vim ~/.vim
