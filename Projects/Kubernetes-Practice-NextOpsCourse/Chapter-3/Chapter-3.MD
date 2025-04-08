### Ingress Controller & Resources

```powershell
#create namespace
kubectl create namespace ingress-nginx
#to run ingress controller all components
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.2.1/deploy/static/provider/cloud/deploy.yaml
kubectl get ingress
kubectl delete -A ValidatingWebhookConfiguration ingress-nginx-admission

```

![img.png](img.png)