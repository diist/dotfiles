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

brew tap caskroom/cask
brew tap homebrew/cask-fonts

casks="
  1password
  android-file-transfer
  docker
  evernote
  font-fira-code
  google-chrome
  google-cloud-sdk
  iterm2
  slack
  spectacle
  spotify
  visual-studio-code
  vlc
"

for cask in ${casks}; do
  echo "Installing ${cask}..."
  brew cask install ${cask}
done
