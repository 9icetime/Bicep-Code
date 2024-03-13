//param paramName Type(array, bool, int, objet, secureObject, secureString, string) = DefaultValue (name)

param AppservicePlan string

param Appservice string 

param Instrumentationkey string 

param location string 




resource azbicepaspl 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: AppservicePlan
  location: location
  sku: {
    name: 'S1'
    capacity: 1
  }
}

resource azbicepas 'Microsoft.Web/sites@2023-01-01' = {
  name: Appservice
  location: location
  properties: {
    serverFarmId: resourceId('Microsoft.Web/serverfarms', 'azbicep-dev-eus-aspl')
  }
  dependsOn:[
    azbicepaspl
  ]
}

resource azbicepwebappsetting 'Microsoft.Web/sites/config@2023-01-01' = {
  name: 'web'
  parent: azbicepas
  properties: {
    appSettings: [
      {
        name: 'APPINSIGHTS_INSTRUMENTATIONKEY'
        value: Instrumentationkey
      }
      {
        name: 'key2'
        value: 'value2'
      }
    ]
  }
}



