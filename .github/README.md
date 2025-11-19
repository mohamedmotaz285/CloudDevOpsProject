## ⚡ GitHub Actions CI/CD Pipeline

The **CI/CD pipeline** is fully automated using **GitHub Actions** to build, scan, and deploy the Dockerized application to the Kubernetes cluster.

### 📝 Workflow Overview

* **Workflow Name:** `CI/CD Pipeline`
* **Trigger:** On push to the `main` branch
* **Environment Variables:**

  * `IMAGE_NAME`: Docker Hub image (`mohamedmotaz350/finalapplication`)
  * `K8S_MANIFEST_DIR`: `k8s`
  * `K8S_DEPLOYMENT_FILE`: `deployment.yaml`

### 🛠 Pipeline Steps

1. **Checkout Repository** 📥
   Pulls the latest code from the `main` branch.

   ```yaml
   uses: actions/checkout@v3
   ```

2. **Set up Docker** 🐳
   Prepares the Docker environment to build images.

   ```yaml
   uses: docker/setup-buildx-action@v2
   ```

3. **Build Docker Image** 🏗️
   Builds the Docker image using the Dockerfile in the repo.

   ```bash
   docker build -t $IMAGE_NAME:latest .
   ```

4. **Scan Image using Trivy** 🔍
   Ensures the Docker image is secure by scanning for vulnerabilities.

   ```yaml
   uses: aquasecurity/trivy-action@0.20.0
   ```

5. **Log in to DockerHub** 🔑
   Authenticates using secrets (`DOCKERHUB_USERNAME` and `DOCKERHUB_TOKEN`).

6. **Push Docker Image** ⬆️
   Pushes the built image to Docker Hub.

   ```bash
   docker push $IMAGE_NAME:latest
   ```

7. **Delete Local Image** 🗑️
   Cleans up local Docker images to save space.

   ```bash
   docker rmi $IMAGE_NAME:latest
   ```

8. **Update Kubernetes Manifests** ✏️
   Updates the deployment manifest to use the new Docker image.

   ```bash
   sed -i "s|image: .*|image: $IMAGE_NAME:latest|g" $K8S_MANIFEST_DIR/$K8S_DEPLOYMENT_FILE
   ```

9. **Commit & Push Deployment Update** 💾
   Automatically commits the updated deployment file and pushes it back to GitHub (skip CI to avoid loop).

### 📸 Screenshot

(<img width="1920" height="1020" alt="Screenshot 2025-11-19 220314" src="https://github.com/user-attachments/assets/44baf615-ff80-430b-902b-abaa6c43ea4b" />
)

---

This pipeline ensures **continuous integration and deployment** of the CloudDevOpsProject app, keeping your EKS cluster updated automatically whenever changes are pushed to the `main` branch. 🌟
