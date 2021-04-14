helm install customer1-nginx-ingress ingress-nginx/ingress-nginx \
    --namespace customer1 \
    --set controller.replicaCount=2 \
    --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set controller.ingressClass=customer1-nginx-ingress \
    --set controller.admissionWebhooks.patch.nodeSelector."beta\.kubernetes\.io/os"=linux 
