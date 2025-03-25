## Kubernetes Commands Reference

command to connect to GKE Cluster

```shell
gcloud auth login
gcloud container clusters get-credentials cluster-1 --zone us-central1-c --project playground-s-11-ae1dad93
# Install missing plugin
gcloud components install gke-gcloud-auth-plugin
```