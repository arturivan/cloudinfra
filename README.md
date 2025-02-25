# Cloud IaC

The following **Infrastructure as Code** repository uses **Checkov** for security scanning to enforce security before deploying **Bicep configurations** and **Terraform resources** to **Azure Cloud**. **Terraform** is used for deploying infrastructure, while **Bicep** is used for Azure-specific security and compliance policies, including **Azure Policy, Conditional Access Policies, RBAC Assignments, and Microsoft Defender for Cloud settings**, etc. **Bicep** directly supports security and governance features in **Azure Resource Manager (ARM)**. Many security settings, such as **Conditional Access** and **Azure Policy**, are better integrated with **ARM templates/Bicep**.

### **Key Implementations:**

- Service Principal is set up for Azure authentication.
- Terraform state file is securely stored in Azure Blob Storage.
- Two separate GitHub Actions workflows are created for Terraform and Bicep code.
- Security scan logs are stored as artifacts in GitHub.

created Service Principal for Github Actions
saved credentials as Github Action secret:

```
{
    "clientSecret":  "******",
    "subscriptionId":  "******",
    "tenantId":  "******",
    "clientId":  "******"
}
```
