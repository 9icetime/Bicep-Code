param StorageAccount string 
param location string 

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: StorageAccount
  location: location
  sku: {
    name: 'Premium_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Cool'
  }
}
