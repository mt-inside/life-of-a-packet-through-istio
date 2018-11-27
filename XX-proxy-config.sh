PP=productpage-v1-6679744458-qs8j2
R=reviews-v1-546d9f77ff-nfxg4

set -x

istioctl proxy-config routes $PP --name '9080' -o json
read

istioctl proxy-config clusters $PP --fqdn 'outbound|9080||reviews.default.svc.cluster.local' -o json
read
istioctl proxy-config clusters $PP --fqdn 'reviews.default.svc.cluster.local' -o json
read
istioctl proxy-config clusters $R --fqdn 'reviews.default.svc.cluster.local' -o json
read

istioctl proxy-config endpoints $PP --cluster 'outbound|9080||reviews.default.svc.cluster.local'
read
istioctl proxy-config endpoints $PP --cluster 'outbound|9080|v1|reviews.default.svc.cluster.local'
read
kubectl get pods -o wide
