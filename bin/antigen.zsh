#!/usr/local/bin/zsh

source ~/code/github.com/diist/dotfiles/cfg/zsh/antigen.zsh

# Update / change plugins
antigen bundles <<EOBUNDLES
  fzf
  command-not-found
  docker
  docker-compose
  colored-man-pages
  olivierverdier/zsh-git-prompt
  superbrothers/zsh-kubectl-prompt
  zsh-users/zsh-completions
EOBUNDLES

antigen theme robbyrussell
antigen apply
