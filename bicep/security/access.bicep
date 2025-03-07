param policyName string = 'Require MFA for External Users'
param state string = 'enabled'

resource conditionalAccessPolicy 'Microsoft.Graph/conditionalAccessPolicies@1.0' = {
  name: guid(policyName)
  properties: {
    state: state
    displayName: policyName
    conditions: {
      users: {
        includeUsers: ['All'] // Apply to all users
        excludeUsers: [] // You can exclude specific user IDs if needed
      }
      locations: {
        includeLocations: ['All'] // Apply globally
        excludeLocations: ['trustedLocationId'] // Exclude trusted locations
      }
    }
    grantControls: {
      operator: 'OR'
      builtInControls: ['mfa'] // Require MFA
    }
  }
}
