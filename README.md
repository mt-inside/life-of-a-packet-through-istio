### Prerequisites

* A GCP account and project with the `Compute` and `GKE` APIs enabled, and local configured `gcloud` client
  * Note: we will be creating a cluster of three fairly large nodes; this will not be within the free tier. There's a teardown script at the end so this doesn't stay up too long.
* Locally installed kubectl
* Locally installed Helm 2.11+

### Instructions

Run the scripts in order, starting at `01-*.sh`
Where the instructions say "open http://...", the actual command `open http://...` can be used on OS X and will use your default browser.

After you've finished these exercises, you can carry on with [the rest of the examples in the Istio docs](https://istio.io/docs/examples/bookinfo/#what-s-next).
