# Cloud IaC

The following **Infrastructure as Code** repository uses **Checkov** for security scanning to enforce security before deploying **Bicep configurations** and **Terraform resources** to **Azure Cloud**. **Terraform** is used for deploying infrastructure, while **Bicep** is used for Azure-specific security and compliance policies, including **Azure Policy, Conditional Access Policies, RBAC Assignments, and Microsoft Defender for Cloud settings**, etc. **Bicep** directly supports security and governance features in **Azure Resource Manager (ARM)**. Many security settings, such as **Conditional Access** and **Azure Policy**, are better integrated with **ARM templates/Bicep**.

### **Key Implementations:**

- Service Principal is set up for Azure authentication.
- Terraform state file is securely stored in Azure Blob Storage.
- Two separate GitHub Actions workflows are created for Terraform and Bicep code.
- Security scan logs are stored as artifacts in GitHub.

Created Service Principal for Github Actions
saved credentials as a Github Action secret:

```
{
    "clientSecret":  "******",
    "subscriptionId":  "******",
    "tenantId":  "******",
    "clientId":  "******"
}
```

**Deploy Bicep GitHub Actions Workflow**

This GitHub Actions pipeline automates the deployment of Bicep infrastructure to Azure while incorporating security scanning with Checkov.

**Workflow Overview**

**Security Scanning**

- Runs Checkov to analyze Bicep templates for security misconfigurations.
- Saves Checkov logs as artifacts for review.
- Fails the pipeline if critical security issues are detected.

**Deployment Process**

**Resource Group Deployment**

- Authenticates with Azure using stored credentials.
- Deploys a Resource Group using Bicep.

**Infrastructure Deployment**

Deploys additional Azure resources, including VNet Peering, using Bicep.

**Trigger Conditions**

- Runs on a push to the main branch.
- Triggers only if changes are made to bicep/deploy.

**Technologies Used**

- GitHub Actions for automation.
- Checkov for security scanning.
- Azure CLI for deployments.
- Bicep for Infrastructure as Code (IaC).

**Deploy Terraform GitHub Actions Workflow**

This GitHub Actions pipeline automates the security scanning and deployment of infrastructure using Terraform and Azure. It ensures that infrastructure is securely validated before being deployed.

**Overview**

This workflow is triggered on every push to the main branch when changes are made to the terraform/deploy directory.

**Security Scanning**

- Checkov scans Terraform configurations for security vulnerabilities.
- Logs from the security scan are stored as workflow artifacts.
- If critical issues are detected, the workflow fails to prevent insecure deployments.

**Deployment Steps**

- Initialize Terraform Backend – Sets up Terraform and configures the backend using Azure Storage for state management.
- Plan Execution – Creates a Terraform execution plan to preview the infrastructure changes.
- Automatic Deployment – Runs terraform apply -auto-approve to provision resources in Azure.

**Technologies Used**

- GitHub Actions for automation
- Checkov for security compliance
- Terraform for infrastructure as code
- Azure Storage for state management
