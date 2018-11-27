source 00-common.sh

set -x
gcloud container clusters delete --zone $Z $C
echo now change kube context back to something valid
