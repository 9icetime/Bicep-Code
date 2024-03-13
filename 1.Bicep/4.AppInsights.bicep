param AppInsight string 

// Connect Application Insight with App Service using instrumentation key
// To connect application insight with app service, we have to take the instrumentation key from app insight and code it in app setting properties

resource azbicepappInsights 'Microsoft.Insights/components@2020-02-02' = {
  name: AppInsight
  location: resourceGroup().location
  kind: 'web'
  properties: {
    Application_Type: 'web'
  }
}

output oInstrumentationkey string = azbicepappInsights.properties.InstrumentationKey
