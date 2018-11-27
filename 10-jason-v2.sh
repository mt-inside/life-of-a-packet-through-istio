source 00-common.sh

set -x
kubectl apply -f istio-*/samples/bookinfo/networking/virtual-service-reviews-test-v2.yaml
echo and one last bit of yaml...
echo press the any key
read
cat istio-*/samples/bookinfo/networking/virtual-service-reviews-test-v2.yaml
echo press the any key
read
echo now open http://${GATEWAY_URL}/productpage
