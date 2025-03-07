locals {
  storage_account_name = "${var.naming_prefix}-${random_integer.name_suffix.result}"
}

resource "random_integer" "name_suffix" {
  min = 10000
  max = 99999
}

resource "azurerm_storage_account" "example" {
  name                     = local.storage_account_name
  resource_group_name      = techies-37395
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  # Enabling public access (INSECURE)
  enable_https_traffic_only = false # Allows HTTP traffic (INSECURE)
  allow_blob_public_access  = true  # Allows public access to blobs (INSECURE)

  # Disabling network rules (INSECURE)
  network_rules {
    default_action = "Allow" # Allows all network traffic (INSECURE)
    bypass         = ["AzureServices"]
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "example-container"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "container" # Allows public read access to blobs (INSECURE)
}