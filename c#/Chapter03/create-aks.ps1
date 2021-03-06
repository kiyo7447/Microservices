$resourcegroupname = "MicroservicesShoppingCart"
$acrname = $resourcegroupname + "Registry"
$aksname = $resourcegroupname + "AKSCluster"

#az group create --name $resourcegroupname --location japaneast
az group create --name $resourcegroupname --location northeurope
az acr create --resource-group $resourcegroupname --name $acrname --sku Basic
az aks create --resource-group $resourcegroupname --name $aksname --node-count 1 --enable-addons monitoring --generate-ssh-keys --attach-acr $acrname

az aks get-credentials --resource-group $resourcegroupname --name $aksname
kubectl get nodes
