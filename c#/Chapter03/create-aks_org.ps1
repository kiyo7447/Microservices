az group create --name MicroservicesInDotnet --location northeurope
az acr create --resource-group MicroservicesInDotnet --name MicroservicesInDotnetRegistry1 --sku Basic
az aks create --resource-group MicroservicesInDotnet --name MicroservicesInDotnetAKSCluster --node-count 1 --enable-addons monitoring --generate-ssh-keys --attach-acr MicroservicesInDotnetRegistry1

az aks get-credentials --resource-group MicroservicesInDotnet --name MicroservicesInDotnetAKSCluster
kubectl get nodes
