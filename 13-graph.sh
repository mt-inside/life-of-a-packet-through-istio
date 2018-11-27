source 00-common.sh

set -x
echo http://localhost:8088/force/forcegraph.html
kubectl -n istio-system port-forward $(kubectl -n istio-system get pod -l app=servicegraph -o jsonpath='{.items[0].metadata.name}') 8088:8088
