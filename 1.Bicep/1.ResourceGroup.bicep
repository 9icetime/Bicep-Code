targetScope = 'subscription'

resource azbicepresourcegroup 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: 'azbicep-dev-eus-rg1'
  location: 'eastus'
}


resource azbicepresourcegroup1 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: 'azbicep-prd-eus-rg1'
  location: 'eastus'
}

resource azbicepresourcegroup2 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: 'azbicep-stg-eus-rg1'
  location: 'eastus'
}
