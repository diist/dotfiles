#!/bin/bash

packages="
  bat
  cfssl
  docker-completion
  exercism
  fzf
  gnupg
  gnutls
  go
  htop
  hub
  istioctl
  jq
  kubernetes-cli
  kubernetes-helm
  kubectx
  netcat
  openssl
  shellcheck
  sqlite
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

casks="
  1password
  android-file-transfer
  docker
  evernote
  google-chrome
  google-cloud-sdk
  iterm2
  slack
  spectacle
  spotify
  visual-studio-code
  vlc
"

brew tap caskroom/cask

for cask in ${casks}; do
  echo "Installing ${cask}..."
  brew cask install ${cask}
done
