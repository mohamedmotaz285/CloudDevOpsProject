## 🏗️ Terraform Infrastructure

The CloudDevOpsProject infrastructure is provisioned using **Terraform**, ensuring reproducibility, scalability, and easy management of AWS resources.

### 🗂 Repository Structure (`terraform/`)

```
terraform/
├── backend.tf             # Backend configuration
├── main.tf                # Main Terraform configuration
├── outputs.tf             # Output values
├── terraform.tfvars       # Variable values
├── variables.tf           # Input variables
├── modules/               # Reusable Terraform modules
   └── eks/               # EKS module (main.tf, variables.tf, outputs.tf)
   └── network/               # Networking module (main.tf, variables.tf, outputs.tf)
   └── server/                # EC2/server module (main.tf, variables.tf, outputs.tf)
```

### 🛠 Provisioning Steps

1. Navigate to the Terraform directory:

   ```bash
   cd terraform
   ```
2. Initialize Terraform:

   ```bash
   terraform init
   ```
3. Preview the planned infrastructure:

   ```bash
   terraform plan
   ```
4. Apply the configuration to provision resources:

   ```bash
   terraform apply
   ```
5. Verify resources in AWS:

   * **Network:** VPC, Public & Private Subnets, Security Groups
   * **EKS Cluster:** Cluster + Node Group
   * **Server:** EC2 instances or backend services

### 🌐 Infrastructure Details

* **EKS Cluster Endpoint:** `https://5106C033A370D6A25C23002D0ADDE38C.gr7.us-east-1.eks.amazonaws.com`
* **Cluster Name:** `clouddevops-eks-cluster`
* **Node Group Name:** `clouddevops-eks-nodes`
* **VPC ID:** `vpc-013065ced72870b6d`
* **Public Subnets:** `subnet-0c636f3c2d048c4e2`, `subnet-0108ccd0d24b5d8a9`
* **Private Subnets:** `subnet-09f159c005c055b6c`, `subnet-05510b0d3a5b11e09`
* **Server Public IP:** `44.204.107.227`

### 📸 Screenshot / Diagram

![Terraform Infrastructure](PLACEHOLDER_IMAGE_URL)

> Replace `PLACEHOLDER_IMAGE_URL` with a screenshot of Terraform plan/apply or a diagram of your AWS architecture.

---

This modular structure ensures **clean, reusable, and maintainable Terraform code**, making your cloud environment reproducible and scalable. ⚡
