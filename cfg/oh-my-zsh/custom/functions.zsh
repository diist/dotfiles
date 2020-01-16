setns ()
{
  k config set-context $(k config current-context) --namespace $1
}

setcert ()
{
  sed -i .bak 's/certificate-authority-data.*/insecure-skip-tls-verify\: true/' ${KUBECONFIG}
  rm -f ${KUBECONFIG}.bak
}

setproxy ()
{
  TLSROUTER=$(kubectl get service -n ingress tlsrouter-service -o jsonpath='{.status.loadBalancer.ingress[0].ip}') || true
  if [ ! -z "$TLSROUTER" ]; then
      sed -i .bak "s/server.*/server\: https\:\/\/${TLSROUTER}/" ${KUBECONFIG}
  fi
  rm -f ${KUBECONFIG}.bak
}

setproxykube ()
{
  TLSROUTER=$(kubectl get service -n kube-system tlsrouter-service -o jsonpath='{.status.loadBalancer.ingress[0].ip}') || true
  if [ ! -z "$TLSROUTER" ]; then
      sed -i .bak "s/server.*/server\: https\:\/\/${TLSROUTER}/" ${KUBECONFIG}
  fi
  rm -f ${KUBECONFIG}.bak
}

setcontext ()
{
  sed -i .bak "s/gke_.*-gke/${GCP_PROJECT}/g" ${KUBECONFIG}
  rm -f ${KUBECONFIG}.bak
}

get-public-creds ()
{
  rm -f ${KUBECONFIG}
  gcloud container clusters get-credentials ${CLUSTER} --region australia-southeast1 --project ${GCP_PROJECT}
}

get-private-creds ()
{
  rm -f ${KUBECONFIG}
  gcloud container clusters get-credentials ${CLUSTER} --region australia-southeast1 --project ${GCP_PROJECT} --internal-ip
}

dumpkube-public ()
{
  get-public-creds
  setcontext
  setcert
  #setproxy
  setns ops-sre
}

dumpkube ()
{
  get-private-creds
  setcontext
  setns ops-sre
}

activate-terra ()
{
  gcloud auth activate-service-account terraform@${GCP_PROJECT}.iam.gserviceaccount.com --key-file ${GOOGLE_CREDENTIALS}
}

rmd () {
  pandoc $1 | lynx -stdin
}

gapi_curl ()
{
    TOKEN=$(gcloud auth print-access-token);
    JSON=$(curl -s -H "Authorization: Bearer ${TOKEN}" "$@");
    echo $JSON | jq
}

# fif() {
#   if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
#   rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
# }

git_branch_clean ()
{
  git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d
}
