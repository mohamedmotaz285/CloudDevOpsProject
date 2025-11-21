(<img width="1920" height="1020" alt="Screenshot 2025-11-19 203251" src="https://github.com/user-attachments/assets/af5ad5f0-b6b3-4b41-9e78-068248a4276d" />
)

# 🚀 **DevOps Graduation Project**
### National Telecommunication Institute (NTI)  
### In Collaboration with **iVolve Technologies**

---

### 🔥 Technologies & Tools

![AWS](https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=Amazon-AWS&logoColor=white)
![EKS](https://img.shields.io/badge/EKS-FF9900?style=for-the-badge&logo=kubernetes&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?style=for-the-badge&logo=kubernetes&logoColor=white)
![ArgoCD](https://img.shields.io/badge/ArgoCD-FE4F00?style=for-the-badge&logo=argo&logoColor=white)
![GitOps](https://img.shields.io/badge/GitOps-000000?style=for-the-badge&logo=git&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-2088FF?style=for-the-badge&logo=githubactions&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![IAC](https://img.shields.io/badge/IaC-000000?style=for-the-badge&logo=terraform&logoColor=white)

---

### 📊 Project Status

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/mohamedmotaz285/CloudDevOpsProject/main.yml?branch=main)
![Docker Pulls](https://img.shields.io/docker/pulls/mohamedmotaz350/finalapplication)
![License](https://img.shields.io/github/license/mohamedmotaz285/CloudDevOpsProject)

</div>

---

## 📝 Project Overview

CloudDevOpsProject is a full-stack Cloud and DevOps project demonstrating infrastructure provisioning, containerization, and continuous deployment. The application is deployed on AWS EKS using Terraform, Docker, and Kubernetes manifests.

---

## ⚙️ Technologies Used

| Component     | Tool / Version         |
| ------------- | ---------------------- |
| Cloud         | AWS                    |
| IaC           | Terraform 1.5          |
| Container     | Docker 24.x            |
| Orchestration | Kubernetes 1.28        |
| CI/CD         | GitHub Actions, ArgoCD |
| App Lang      | Python 3.11            |

---

## 🏗️ Terraform Infrastructure

The infrastructure is provisioned using **Terraform**, ensuring reproducibility and scalability.

### Repository Structure (`terraform/`)

```
terraform/
├── backend.tf
├── main.tf
├── outputs.tf
├── terraform.tfvars
├── variables.tf
├── modules/
    └── eks/
    └── network/
    └── server/
```

### Provisioning Steps

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

### Infrastructure Details

* **EKS Cluster Endpoint:** `https://5106C033A370D6A25C23002D0ADDE38C.gr7.us-east-1.eks.amazonaws.com`
* **Cluster Name:** `clouddevops-eks-cluster`
* **Node Group Name:** `clouddevops-eks-nodes`
* **VPC ID:** `vpc-013065ced72870b6d`
* **Public Subnets:** `subnet-0c636f3c2d048c4e2`, "subnet-0108ccd0d24b5d8a9"
* **Private Subnets:** `subnet-09f159c005c055b6c`, `subnet-05510b0d3a5b11e09`
* **Server Public IP:** `44.203.33.239`

📸 Screenshot / Diagram:
(<img width="2131" height="1801" alt="devops-1 drawio" src="https://github.com/user-attachments/assets/f2f2db8d-e03f-4e4d-9ef2-820f002bdae2" />
>
)

(<img width="563" height="66" alt="WhatsApp iImage 2025-11-19 at 10 40 50 PM" src="https://github.com/user-attachments/assets/09e8280e-9f90-4b32-9e09-d55231884ced" />

)

---

## ☸️ Kubernetes Deployment

The application is deployed to Kubernetes using manifests in `k8s/`.

### Deployment Steps

```bash
kubectl apply -f k8s/namespace.yaml
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl get pods -n ivolve
kubectl get svc -n ivolve
```

📸 Screenshot:
(<img width="984" height="266" alt="WhatsApp Image 2025-11-19 at 10 40 04 PM" src="https://github.com/user-attachments/assets/80ac0ac9-2131-4f55-91cb-3ce880f2e34b" />
)

---

## 🐳 Docker

### Build & Run

```bash
docker build -t clouddevopsproject:latest -f dockerfile .
docker run -p 5000:5000 clouddevopsproject:latest
```

📸 Screenshot:
(<img width="1600" height="732" alt="WhatsApp Image 2025-11-19 at 10 19 25 PM" src="https://github.com/user-attachments/assets/b58aa824-9e46-4a73-aa5c-04d8e2643931" />
)

(<img width="1600" height="732" alt="WhatsApp Image 2025-11-19 at 10 22 50 PM" src="https://github.com/user-attachments/assets/f0902f33-1038-4d14-92b8-0db86f5fa825" />


---

## ⚡ GitHub Actions CI/CD Pipeline

Automates build, scan, and deployment to Kubernetes.

### Steps Overview

1. Checkout repo
2. Setup Docker
3. Build Docker image
4. Scan image with Trivy
5. Login to DockerHub
6. Push image
7. Delete local image
8. Update Kubernetes manifests
9. Commit & push deployment update

📸 Screenshot:
(<img width="1920" height="1020" alt="Screenshot 2025-11-19 220314" src="https://github.com/user-attachments/assets/3c5ceb93-1a3a-4ccb-8cc4-70f51305a705" />
)

(<img width="591" height="1280" alt="WhatsApp Image 2025-11-20 at 5 30 33 PM" src="https://github.com/user-attachments/assets/6522b686-4a11-46ba-ac0d-a280550120d3" />

)

---

## 🚀 ArgoCD Deployment

* **Repository:** `https://github.com/mohamedmotaz285/CloudDevOpsProject.git`
* **Branch:** `main`
* **Application Name:** `devops`
* **Namespace:** `ivolve`
* **Sync Policy:** Auto-sync ✅

### Steps

```bash
argocd app sync devops
```

📸 Screenshot:
(<img width="1600" height="732" alt="WhatsApp Image 2025-11-19 at 10 20 16 PM" src="https://github.com/user-attachments/assets/f4278933-b14a-44ae-9512-161b9a44aa40" />
)

---

## ⚠️ Notes

> Ensure AWS credentials are configured for Terraform and kubectl.
> Environment variables may be required for app configuration.
> Do not store secrets or sensitive data directly in the repository.

---

## 🧑‍💻 Author

**Mohamed Motaz**
GitHub: [mohamedmotaz285](https://github.com/mohamedmotaz285)

---

This README provides a **visual, step-by-step guide** for deploying and maintaining CloudDevOpsProject using modern DevOps practices. 🌟
