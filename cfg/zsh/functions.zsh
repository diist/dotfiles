get-public-creds ()
{
  rm -f ${KUBECONFIG}
  gcloud container clusters get-credentials ${CLUSTER} --region australia-southeast1 --project ${GCP_PROJECT}
}

get-private-creds ()
{
  rm -f ${KUBECONFIG}
  gcloud container clusters get-credentials ${CLUSTER} --region ${GCP_REGION} --project ${GCP_PROJECT} --internal-ip
  kubectl config rename-context $(kubectl config current-context) ${CLUSTER}
  kubectl config set-cluster gke_${GCP_PROJECT}_${GCP_REGION}_${CLUSTER} --insecure-skip-tls-verify=true
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

saml () {
  saml2aws login --role=arn:aws:iam::864141050364:role/Okta-Administrator
  source <(saml2aws script)
}

hubb () {
  open https://$(git remote -v | grep origin | head -n 1 | cut -d'@' -f2 | cut -d' ' -f1 | tr ':' '/')
}
