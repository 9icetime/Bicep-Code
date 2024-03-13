// Module must carry a file path.
// The symbolic name on module does not matter, what really matter is the file name.

param location string 

param AppservicePlan string 

param Appservice string

param AppInsight string 

param StorageAccount string 




module pAppservicePlan '2.AppservicePlan.bicep' = {
  name: 'AppServicePlan'
  params:{
    Appservice: Appservice
    AppservicePlan: AppservicePlan
    Instrumentationkey:AppInsights.outputs.oInstrumentationkey
    location:location
  }
}

module pStorageAccount '3.StorageAccount.bicep' = {
  name: 'StorageAccount'
  params:{
    StorageAccount: StorageAccount
    location:location
  }
}

module AppInsights '4.AppInsights.bicep' = {
  name: 'AppIsight'
  params: {
    AppInsight: AppInsight
    location:location
  }
}
