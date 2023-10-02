#!/bin/bash

packages="
  1password
  android-file-transfer
  bat
  coreutils
  docker
  firefox
  font-fira-code
  foobar2000
  fzf
  gnupg
  gnutls
  go
  htop
  imagemagick
  iterm2
  jq
  kubernetes-cli
  kubernetes-helm
  kubectx
  netcat
  openssl
  poppler
  shellcheck
  spectacle
  starship
  stern
  ripgrep
  tidal
  tree
  vim
  visual-studio-code
  vlc
  watch
  z
"

for package in ${packages}; do
  echo "Installing ${package}..."
  brew install "${package}"
done
