# CloudDevOpsProject

## Project Overview

CloudDevOpsProject is a full-stack Cloud and DevOps project that demonstrates infrastructure provisioning, containerization, and continuous deployment. The project deploys a Python-based application on AWS EKS using Terraform for infrastructure, Docker for containerization, and Kubernetes manifests for deployment.

## Technologies Used

* **Cloud Provider:** AWS
* **Containerization:** Docker
* **Orchestration:** Kubernetes (EKS)
* **Infrastructure as Code:** Terraform
* **CI/CD:** GitHub Actions + ArgoCD
* **Programming Language:** Python
* **Namespace:** `ivolve`

## Repository Structure

```
CloudDevOpsProject/
├── terraform/            # Terraform scripts for VPC, Subnets, EKS cluster, Node Group
├── k8s/                  # Kubernetes manifests: deployment.yaml, service.yaml, namespace.yaml
├── app.py                # Python web application
├── dockerfile            # Dockerfile to build application image
├── templates/            # HTML templates for the app
├── static/               # Static assets (CSS, JS)
└── .github/workflows/    # GitHub Actions workflows for CI/CD
```

## Infrastructure Details

* **EKS Cluster Endpoint:** `https://5106C033A370D6A25C23002D0ADDE38C.gr7.us-east-1.eks.amazonaws.com`
* **Cluster Name:** `clouddevops-eks-cluster`
* **Node Group Name:** `clouddevops-eks-nodes`
* **VPC ID:** `vpc-013065ced72870b6d`
* **Public Subnets:** `subnet-0c636f3c2d048c4e2`, `subnet-0108ccd0d24b5d8a9`
* **Private Subnets:** `subnet-09f159c005c055b6c`, `subnet-05510b0d3a5b11e09`
* **Server Public IP:** `44.204.107.227`

## Setup & Deployment

### Local Setup

1. Clone the repository:

   ```bash
   git clone https://github.com/mohamedmotaz285/CloudDevOpsProject.git
   cd CloudDevOpsProject
   ```
2. Create a Python virtual environment and install dependencies:

   ```bash
   python3 -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt
   ```
3. Run the application locally:

   ```bash
   python app.py
   ```

   Access it at `http://localhost:5000`

### Docker

1. Build Docker image:

   ```bash
   docker build -t clouddevopsproject:latest -f dockerfile .
   ```
2. Run the Docker container:

   ```bash
   docker run -p 5000:5000 clouddevopsproject:latest
   ```

### Kubernetes Deployment

1. Apply the namespace:

   ```bash
   kubectl apply -f k8s/namespace.yaml
   ```
2. Deploy the application:

   ```bash
   kubectl apply -f k8s/deployment.yaml
   kubectl apply -f k8s/service.yaml
   ```
3. Access the service via the LoadBalancer IP.

### Terraform (Infrastructure Provisioning)

1. Navigate to the Terraform folder:

   ```bash
   cd terraform
   terraform init
   terraform plan
   terraform apply
   ```

   This will provision VPC, subnets, EKS cluster, and node group.

## CI/CD

* GitHub Actions automates build, test, and Docker image push.
* ArgoCD handles automatic deployment to EKS cluster.

## Notes

* Ensure AWS credentials are configured for Terraform and kubectl.
* Do not store secrets or sensitive data directly in the repository.
* Environment variables may be required for app configuration.

## Author

**Mohamed Motaz**
GitHub: [mohamedmotaz285](https://github.com/mohamedmotaz285)

---

CloudDevOpsProject showcases a full DevOps workflow from infrastructure provisioning to automated deployment on a Kubernetes cluster.
