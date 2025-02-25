locals {
  resource_group_name = "${var.naming_prefix}-${random_integer.name_suffix.result}"
}

resource "random_integer" "name_suffix" {
  min = 10000
  max = 99999
}

resource "azurerm_resource_group" "techrg" {
  name     = local.resource_group_name
  location = var.location
  tags = {
    environment = var.tag_environment
    owner = var.tag_owner
  }
}