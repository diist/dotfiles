#!/bin/bash

packages="
  bat
  cfssl
  docker-completion
  docker-credential-helper-ecr
  exercism
  fzf
  gnupg
  gnutls
  go
  htop
  imagemagick
  jq
  kubernetes-cli
  kubernetes-helm
  kubectx
  netcat
  openssl
  shellcheck
  stern
  the_silver_searcher
  tree
  vim
  watch
  wget
  zsh
  zsh-completions
"

for package in ${packages}; do
  echo "Installing ${package}..."
  brew install ${package}
done

brew tap homebrew/cask
brew tap homebrew/cask-fonts

casks="
  1password
  android-file-transfer
  docker
  font-fira-code
  google-chrome
  iterm2
  notion
  slack
  spectacle
  spotify
  visual-studio-code
  vlc
"

for cask in ${casks}; do
  echo "Installing ${cask}..."
  brew install ${cask}
done
