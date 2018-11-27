source 00-common.sh

set -x
kubectl apply -f istio-*/samples/bookinfo/networking/destination-rule-all.yaml
echo and that file ^^ looks like...
echo press the any key
read
cat istio-*/samples/bookinfo/networking/destination-rule-all.yaml
