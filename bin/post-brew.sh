#!/bin/bash

cd $(dirname $0)/..

# Make zsh default shell
chsh -s /bin/zsh

# Disable mouse acceleration (default: 1.5)
defaults write .GlobalPreferences com.apple.mouse.scaling -1

# Imperatively configuring git to avoid overwriting .gitconfig
git config --global rebase.autosquash true
