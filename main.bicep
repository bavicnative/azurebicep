@description('Name of the storage account')
param storageAccountName string

@description('Location for the resources')
param location string = 'East US'

module storageAccountModule './modules/storage-account.bicep' = {
  name: 'storageAccountDeployment'
  params: {
    storageAccountName: storageAccountName
    location: location
  }
}

output storageAccountId string = storageAccountModule.outputs.storageAccountId
