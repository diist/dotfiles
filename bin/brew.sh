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

brew tap caskroom/cask
brew tap versent/homebrew-taps

casks="
  1password
  android-file-transfer
  docker
  evernote
  google-chrome
  google-cloud-sdk
  iterm2
  saml2aws
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
