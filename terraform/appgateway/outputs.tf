output "application_gateway_ip_address" {
  value = azurerm_public_ip.appgw_public_ip.ip_address
  description = "The public IP address of the Application Gateway"
}

output "application_gateway_fqdn" {
  value = azurerm_public_ip.appgw_public_ip.fqdn
  description = "The fully qualified domain name of the Application Gateway"
}

output "secure_application_url" {
  value = "https://${azurerm_public_ip.appgw_public_ip.fqdn}"
  description = "The secure HTTPS URL to access the application"
}

output "vm_private_ip_addresses" {
  value = [for nic in azurerm_network_interface.my_nic : nic.ip_configuration[0].private_ip_address]
  description = "The private IP addresses of the backend virtual machines"
}