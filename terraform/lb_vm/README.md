# This template creates a public load balancer along with multiple resources, including virtual machines, using Terraform.

The project demonstrates the use of Azure Key Vault for secret management, specifically for OS credentials, during resource deployment in Terraform. The secrets were created using Azure PowerShell.

The following resources are created:

- Azure Resource Group
- Azure Virtual Network
- Azure Subnet
- Azure Public IP
- Azure Load Balancer
- Azure Network Interface
- Azure Network Interface Load Balancer Backend Address Pool Association
- Azure Linux Virtual Machines
- Azure Virtual Machine Extension

How to specify the username and password of the administrator account:
adminUsername and adminPassword in OS profile:
https://learn.microsoft.com/en-us/rest/api/compute/virtual-machines/create-or-update?view=rest-compute-2024-11-04&tabs=HTTP#osprofile
