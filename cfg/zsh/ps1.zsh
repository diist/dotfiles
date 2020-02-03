autoload -U colors && colors

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"

function precmd() {
  export PS1_RETURN_ARROW="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)"
  export PS1_RETURN_CODE="%(?..%{$fg[red]%} %?%{$resetcolor%})"
  export PS1_HOME="%{$fg[cyan]%}${PWD/#$HOME/~}%{$reset_color%}"
  export PS1_TIME="%{$fg_bold[green]%}%*%{$reset_color%}"
  export PS1_DOLLAR="%{$fg_bold[green]%}$%{$reset_color%}"

  if [[ $KUBE = true ]]; then
    export PS1_KUBE="%{$fg[cyan]%}⎈ $ZSH_KUBECTL_PROMPT%{$reset_color%}"
  else
    unset PS1_KUBE
  fi
}

export PROMPT='
${PS1_RETURN_ARROW} ${PS1_RETURN_CODE} ${PS1_HOME} $(git_prompt_info)${PS1_TIME} ${PS1_KUBE}
${PS1_DOLLAR} '
