[//]: # (Minikube Start Command)
& 'C:\Program Files\Docker\Docker\Docker Desktop.exe'
minikube start --nodes 3 --driver=docker

Run your first app 

```shell
kubectl create deploy firstapp --image=nginx
kubectl -h
kubectl create -h
kubectl completion -h
kubectl run firstpod --image=nginx
kubectl describe pod podname
```