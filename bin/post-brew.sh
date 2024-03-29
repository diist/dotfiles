#!/bin/bash

cd $(dirname $0)/..

# Disable mouse acceleration (default: 1.5)
defaults write .GlobalPreferences com.apple.mouse.scaling -1

# Imperatively configuring git to avoid overwriting .gitconfig
git config --global rebase.autosquash true

# Font smoothing something something
defaults write -g CGFontRenderingFontSmoothingDisabled YES

# fzf config
/opt/homebrew/opt/fzf/install
