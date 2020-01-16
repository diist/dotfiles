# Go
export GOPATH=~/code/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin

# AWS
export AWS_CLI=/usr/local/bin/aws
export AWS_DEFAULT_REGION=ap-southeast-2

# zsh plugins
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'

# Do not commit
source $ZSH_CUSTOM/sensitive-exports.zsh

# alpaca
export http_proxy=localhost:3128
export https_proxy=localhost:3128

# fzf
source /usr/local/opt/fzf/shell/key-bindings.zsh
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_OPTS="--multi --bind 'ctrl-a:select-all' --inline-info --exact"

