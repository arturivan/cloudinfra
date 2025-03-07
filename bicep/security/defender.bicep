param subscriptionId string = '<YOUR_SUBSCRIPTION_ID>'

resource defenderForCloud 'Microsoft.Security/pricings@2023-01-01' = {
  name: 'default' // Enables Defender for the entire subscription
  properties: {
    pricingTier: 'Standard' // Enables Defender (change to 'Free' for basic)
  }
}

// Enable Defender for specific resources
resource defenderForServers 'Microsoft.Security/pricings@2023-01-01' = {
  name: 'VirtualMachines'
  properties: {
    pricingTier: 'Standard' // Defender for Servers
  }
}

resource defenderForStorage 'Microsoft.Security/pricings@2023-01-01' = {
  name: 'StorageAccounts'
  properties: {
    pricingTier: 'Standard' // Defender for Storage
  }
}

resource defenderForSQL 'Microsoft.Security/pricings@2023-01-01' = {
  name: 'SqlServers'
  properties: {
    pricingTier: 'Standard' // Defender for SQL
  }
}

resource securityContacts 'Microsoft.Security/securityContacts@2021-01-01-preview' = {
  name: 'default'
  properties: {
    emails: 'securityteam@example.com'
    phone: '+1234567890'
    alertNotifications: 'On' // Enables alerts
    alertsToAdmins: 'On' // Sends alerts to subscription admins
  }
}

resource securityCompliance 'Microsoft.Security/regulatoryComplianceStandards@2021-01-01-preview' = {
  name: 'AzureCIS'
}
