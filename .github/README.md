<img width="1920" height="1020" alt="Screenshot 2025-11-19 203251" src="https://github.com/user-attachments/assets/1579b99e-737e-4bf1-a8da-f90509dc0832" />


# ☁️💻 CloudDevOpsProject

*A full-stack Cloud & DevOps application with CI/CD, Terraform, Docker, Kubernetes & ArgoCD*

![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/mohamedmotaz285/CloudDevOpsProject/ci-cd.yml?branch=main)
![Docker Pulls](https://img.shields.io/docker/pulls/mohamedmotaz350/finalapplication)
![License](https://img.shields.io/github/license/mohamedmotaz285/CloudDevOpsProject)

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
* **Public Subnets:** `subnet-0c636f3c2d048c4e2`, `subnet-0108ccd0d24b5d8a9`
* **Private Subnets:** `subnet-09f159c005c055b6c`, `subnet-05510b0d3a5b11e09`
* **Server Public IP:** `44.204.107.227`

📸 Screenshot / Diagram:
![Terraform Infrastructure](assets/terraform.png)

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
![Kubernetes Deployment](<img width="984" height="266" alt="WhatsApp Image 2025-11-19 at 10 40 04 PM" src="https://github.com/user-attachments/assets/9dd10bf8-6617-495f-8958-22d1ecb22ac6" />
)

---

## 🐳 Docker

### Build & Run

```bash
docker build -t clouddevopsproject:latest -f dockerfile .
docker run -p 5000:5000 clouddevopsproject:latest
```

📸 Screenshot:
![Docker Container](<img width="1600" height="732" alt="WhatsApp Image 2025-11-19 at 10 19 25 PM" src="https://github.com/user-attachments/assets/3dd08a43-dbce-44d5-bd78-148f7984f116" />

)
![Docker Container](<img width="1600" height="732" alt="WhatsApp Image 2025-11-19 at 10 22 50 PM" src="https://github.com/user-attachments/assets/736fd936-a5ba-44fd-9983-e1752f572732" />
)

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
![GitHub Actions Workflow](<img width="1920" height="1020" alt="Screenshot 2025-11-19 220325" src="https://github.com/user-attachments/assets/11a30e9b-a61c-4187-92d7-c619ede3877e" />
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
![ArgoCD Dashboard](<img width="1600" height="732" alt="WhatsApp Image 2025-11-19 at 10 20 16 PM" src="https://github.com/user-attachments/assets/24409f90-d764-4248-b431-635382944da5" />
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

This README provides a **visual, step-by-step guide** for deploying and maintaining CloudDevOpsProject using modern DevOps practices.  🌟
