source 00-common.sh

set -x
kubectl create -f istio-*/install/kubernetes/helm/helm-service-account.yaml
helm init --service-account tiller
while true; do if ! helm --tiller-connection-timeout=1 version; then sleep 1; else exit 0; fi; done
