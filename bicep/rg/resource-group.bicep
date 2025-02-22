targetScope='subscription'

@description('The name of the resource group to create.')
param resourceGroupName string

@description('The Azure region where the resource group will be deployed.')
param location string

resource rg 'Microsoft.Resources/resourceGroups@2024-11-01' = {
  name: resourceGroupName
  location: location
}
