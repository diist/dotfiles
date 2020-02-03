setproxy ()
{
  TLSROUTER=$(kubectl get service -n ingress tlsrouter-service -o jsonpath='{.status.loadBalancer.ingress[0].ip}') || true
  if [ ! -z "$TLSROUTER" ]; then
      sed -i .bak "s/server.*/server\: https\:\/\/${TLSROUTER}/" ${KUBECONFIG}
  fi
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

gapi_curl ()
{
    TOKEN=$(gcloud auth print-access-token);
    JSON=$(curl -s -H "Authorization: Bearer ${TOKEN}" "$@");
    echo $JSON | jq
}

git_branch_clean ()
{
  git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d
}

kube() {
  export KUBE=true
}