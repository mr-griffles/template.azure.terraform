az group create --location $REGION --name $TERRAFORM_BACKEND_RESOURCE_GROUP_NAME
az storage account create -n $TERRAFORM_BACKEND_STORAGE_ACCOUNT_NAME -g $TERRAFORM_BACKEND_RESOURCE_GROUP_NAME -l $REGION --sku Standard_LRS
az storage container create --name $TERRAFORM_BACKEND_STORAGE_ACCOUNT_CONTAINER_NAME --account-name $TERRAFORM_BACKEND_STORAGE_ACCOUNT_NAME