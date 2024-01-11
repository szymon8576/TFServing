_Azure CLI_ commands:

### Pushing Docker image to Azure Container Registry
az group create --name rg-name --location location-name  
az acr create --resource-group rg-name --name acr-name --sku Basic  
az acr login --name acr-name  
docker build -t acr-name.azurecr.io/tfs-image:version1.0 .  
docker push acr-name.azurecr.io/tfs-image:version1.0  

### WebApp Configuration
WEBSITES_PORT = XXXX  _#expose API port_
