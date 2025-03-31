### Chapter - 2

```shell

kubectl get pods -o wide
kubectl apply -f .
kubectl get service
kubectl get nodes -o wide
kubectl get service -o wide
gcloud compute firewall-rules list
kubectl get nodes -w -o wide
#enable firewall rules 
gcloud compute firewall-rules create allow-tcp-31603 --network default --action allow --direction ingress --rules tcp:31603 --source-ranges 0.0.0.0/0 --target-tags gke-cluster-1-default-pool-fcc21220-nlnn --priority 1000 --description "Allow TCP traffic on port 8080 for GKE nodes"
#connect to pod using sh
kubectl run -it --rm debug --image=busybox -- sh
```

![img.png](img.png)
![img_1.png](img_1.png)
![img_2.png](img_2.png)
![img_3.png](img_3.png)