**Azure Terraform Deployment: Scalable Infrastructure with VMs, Nginx, and Application Gateway**

Provisioned an Azure infrastructure using Terraform, including a randomly generated resource group, virtual network, subnets for VMs and an application gateway, network security group with inbound rules, and public IP for the gateway. Integrated Key Vault to securely retrieve admin credentials. Deployed two virtual machines with static private IPs, enabled a virtual machine extension to install and configure Nginx, and created an Application Gateway with backend integration, HTTP listener, and health probe for traffic management. The setup ensures a secure, scalable, and automated environment for deploying web applications.

**The infrastructure is designed to handle growth efficiently. The setup includes:**

Multiple Virtual Machines – Two VMs are deployed, but the configuration allows easy scaling by adjusting the count parameter.

- Application Gateway – Can distribute traffic across multiple backend VMs
- Dynamic Resource Naming – Using Terraform's random string and variable-based configurations ensures flexibility for scaling deployments.
- Infrastructure as Code (IaC) – Enables quick modifications and redeployments without manual intervention.

![Azure](images/scr0603.png)
