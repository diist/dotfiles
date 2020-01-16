# navigation
alias c='cd /Users/labbec/code'
alias ob='cd /Users/labbec/code/ob'
alias ocp='cd /Users/labbec/code/ocp'

# built-in
alias ll='ls -l'
alias la='ls -al'
alias l.='ls -d .*'
alias ig='grep -i'

# docker
alias d='docker'
alias ds='docker service'
alias di='docker images'
alias dps='docker push'
alias dpl='docker pull'
alias drun='docker run --rm -it'
alias dexec='docker exec -it'
alias dm='docker-machine'
alias dcc='docker-compose stop && docker-compose rm -f'
alias dcu='docker-compose up --force-recreate'
alias dcbr='docker-compose build && docker-compose run'
alias dc='docker-compose'
alias dcr='docker-compose run'
alias dcb='docker-compose build'

alias dstackup='docker pull realestate/stackup:latest'
alias stackup='docker run --rm -it \
  -e AWS_SECRET_ACCESS_KEY \
  -e AWS_SECURITY_TOKEN \
  -e AWS_SESSION_TOKEN \
  -e AWS_ACCESS_KEY_ID \
  -e AWS_DEFAULT_REGION \
  -e AWS_REGION \
  -v ${PWD}:/cwd \
  -w /cwd \
  realestate/stackup:latest'

# Git
alias git='hub'
alias hubb='hub browse'
alias g='git'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gpl='git pull'
alias gps='git push'
alias ga='git add .'
alias gch='git checkout'
alias gc='git commit -v'
alias gco='git checkout'
alias gpr='git pull --rebase'
alias gpsuo='git push -u origin'

# Misc
alias weather='curl wttr.in/melbourne'
alias v='vim'
alias cat='bat -p'
alias yat='bat -p -l yaml'

# Clusters
# alias k='kubectl --insecure-skip-tls-verify=true'
alias k='kubectl'
alias kd='k describe'
alias kg='k get'
alias kgp='kg pods'
alias kge='kg events'
alias kl='k logs'
alias ktn='k top node'
alias ktp='k top pod --all-namespaces'

alias kga='kg --all-namespaces'
alias kgs='kg --namespace=kube-system'
alias kda='kd --all-namespaces'
alias kds='kd --namespace=kube-system'
alias kls='kl --namespace=kube-system'
alias kgi='kg --namespace=istio-system'
alias kdi='kd --namespace=istio-system'
alias kli='kl --namespace=istio-system'
alias ki='k --namespace=istio-system'
alias kgl='kg deploy,po,service,virtualservice,gateway --all-namespaces -l'
alias kgy='kg -o yaml'

alias kinfo='k cluster-info;kg cs,no,ns'
alias kk='kga deployments,po,rs,rc,svc,ep,hpa,ing,jobs,pv,secrets,gateway,virtualservice,destinationrule'
alias kaf='k apply -f'
alias kdel='k delete -f'

alias k9s='TERM=xterm-256color k9s'

# ANZ
alias obnp='source /usr/local/bin/anz-proxy-ob-np'
alias obprod='source /usr/local/bin/anz-proxy-ob-prod'
alias obstg='source /usr/local/bin/anz-proxy-ob-stg'
alias obbuild='source /usr/local/bin/anz-proxy-build'
alias cspnp='source /usr/local/bin/anz-proxy-csp-np'
alias secnp='source /usr/local/bin/anz-proxy-sec-np'
alias secprod='source /usr/local/bin/anz-proxy-sec-prod'
alias kenc='gcloud kms encrypt --keyring ops --key secrets --location australia-southeast1 --plaintext-file=- --ciphertext-file=-'
alias kdec='gcloud kms decrypt --keyring ops --key secrets --location australia-southeast1 --plaintext-file=- --ciphertext-file=-'
alias kubesealnp='kubeseal --cert ~/.kube/kubeseal-cert-ob-np.pem --format yaml'
alias kubesealstg='kubeseal --cert ~/.kube/kubeseal-cert-ob-stg.pem --format yaml'
