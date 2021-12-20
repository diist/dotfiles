#!/bin/bash

cd $(dirname $0)/..

# Install fzf
/usr/local/opt/fzf/install --all --key-bindings --completion

# Make zsh default shell
chsh -s /bin/bash

# Disable mouse acceleration (default: 1.5)
defaults write .GlobalPreferences com.apple.mouse.scaling -1

# Imperatively configuring git to avoid overwriting .gitconfig
git config --global rebase.autosquash true

# Font smoothing something something
defaults write -g CGFontRenderingFontSmoothingDisabled YES

# starship
curl -sSLO https://starship.rs/install.sh
chmod +x install.sh
./install.sh -y
rm -rf install.sh
