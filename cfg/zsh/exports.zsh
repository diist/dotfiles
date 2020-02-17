# ls
export CLICOLOR yes
export LSCOLORS=agGxFxdxCxegedabagExEx

# Go
export GOPATH=~/code/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Python
export PATH="/usr/local/opt/python@3.8/bin:$PATH"

# AWS
export AWS_CLI=/usr/local/bin/aws
export AWS_DEFAULT_REGION=ap-southeast-2
export AWS_PROFILE=saml

# fzf
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_OPTS="--multi --bind 'ctrl-a:select-all' --inline-info --exact"

# misc
export DOTFILES="~/code/github.com/diist/dotfiles"
