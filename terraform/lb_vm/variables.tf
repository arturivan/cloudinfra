variable "resource_group_location" {
    type = string
    default =  "germanywestcentral"
    description = "Location of the resource group"
}

variable "virtual_network_name" {
  type        = string
  default     = "devops-vnet"
  description = "Name of the Virtual Network."
}

variable "subnet_name" {
  type        = string
  default     = "devops-subnet"
  description = "Name of the subnet."
}

variable public_ip_name {
  type        = string
  default     = "test-public-ip"
  description = "Name of the Public IP."
}

variable network_security_group_name {
  type        = string
  default     = "devops-nsg"
  description = "Name of the Network Security Group."
}

variable "network_interface_name" {
  type        = string
  default     = "vm-nic"
  description = "Name of the Network Interface."  
}

variable "virtual_machine_name" {
  type        = string
  default     = "devops-vm"
  description = "Name of the Virtual Machine."
}

variable "virtual_machine_size" {
  type        = string
  default     = "Standard_B1s"
  description = "Size or SKU of the Virtual Machine."
}

variable "disk_name" {
  type        = string
  default     = "os-disk"
  description = "Name of the OS disk of the Virtual Machine."
}

variable "redundancy_type" {
  type        = string
  default     = "Standard_LRS"
  description = "Storage redundancy type of the OS disk."
}

variable "load_balancer_name" {
  type        = string
  default     = "vm-lb"
  description = "Name of the Load Balancer."
}