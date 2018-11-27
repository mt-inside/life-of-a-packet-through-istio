source 00-common.sh

set -x

# at least 4 cores and ?? GiB RAM are needed
gcloud container clusters create --zone $Z --machine-type=n1-standard-2 --num-nodes=2 --cluster-version=1.11 $C
