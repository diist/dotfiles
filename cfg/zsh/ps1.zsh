autoload -U colors && colors

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%} %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"

function preexec() {
  timer=${timer:-$SECONDS}
}

function precmd() {
  export PS1_RETURN_ARROW="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)"
  export PS1_RETURN_CODE="%(?..%{$fg[red]%} %?%{$resetcolor%})"
  export PS1_HOME="%{$fg_bold[cyan]%}${PWD/#$HOME/~}%{$reset_color%}"
  export PS1_TIME="%{$fg_bold[green]%}%*%{$reset_color%}"
  export PS1_DOLLAR="%{$fg_bold[cyan]%}$%{$reset_color%}"

  if [ $timer ]; then
    timer_show=$(($SECONDS - $timer))
    if [ $timer_show -ge 2 ]; then
      export PS1_TIMER="%{$fg[red]%} ${timer_show}s%{$reset_color%}"
    elif [ $timer_show -lt 1 ]; then
      unset PS1_TIMER
    fi
    unset timer
  fi
}

KUBE_PS1_SYMBOL_COLOR=cyan
KUBE_PS1_PREFIX=""
KUBE_PS1_SUFFIX=""
KUBE_PS1_SEPARATOR=" "
KUBE_PS1_DIVIDER=" "

export PROMPT='
${PS1_RETURN_ARROW} ${PS1_RETURN_CODE}${PS1_TIMER} ${PS1_HOME} $(git_prompt_info)${PS1_TIME} $(kube_ps1)
${PS1_DOLLAR} '
