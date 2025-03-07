# Install module Microsoft.PowerShell.SecretManagement
Install-Module Microsoft.PowerShell.SecretManagement -Repository PSGallery -AllowPrerelease
# Register vault for Secret Management
Register-SecretVault -Name AzKeyVault -ModuleName Az.KeyVault -VaultParameters @{ AZKVaultName = 'k8slabs'; SubscriptionId = '0352086b-a189-4b89-92ff-509aee6fa4d4' }
# Set secret for vault AzKeyVault
$secure = ConvertTo-SecureString -String "your-secret" -AsPlainText -Force
Set-Secret -Name admin-password -SecureStringSecret $secure -Vault AzKeyVault



