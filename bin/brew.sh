#!/bin/bash

packages="
  bat
  coreutils
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
  poppler
  shellcheck
  stern
  ripgrep
  tree
  vim
  watch
  z
"
# zsh
# zsh-completions

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
  firefox
  font-fira-code
  foobar2000
  google-chrome
  iterm2
  karabiner-elements
  notion
  slack
  spectacle
  spotify
  visual-studio-code
  vlc
"

for cask in ${casks}; do
  echo "Installing ${cask}..."
  brew install --cask ${cask}
done
