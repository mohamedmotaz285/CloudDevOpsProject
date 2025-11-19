## 🚀 ArgoCD Deployment

We use **ArgoCD** to automate the deployment of the CloudDevOpsProject application to the Kubernetes cluster. This ensures continuous delivery and real-time synchronization of the application state.

### 🔗 Repository Connection

* **GitHub Repository:** `https://github.com/mohamedmotaz285/CloudDevOpsProject.git`
* **Branch:** `main`
* **ArgoCD Application Name:** `devops`
* **Destination Cluster:** Default Kubernetes cluster
* **Namespace:** `ivolve`
* **Sync Policy:** Auto-sync ✅

### 🛠 Setup & Sync

1. Log in to your ArgoCD dashboard.
2. Add a new application:

   * Connect it to the GitHub repository above.
   * Select branch `main`.
   * Set the target namespace to `ivolve`.
   * Choose auto-sync to keep the cluster always in sync.
3. Apply the application:

   ```bash
   argocd app sync devops
   ```
4. Monitor the deployment status from the ArgoCD dashboard.

### 📸 Screenshots

![ArgoCD Dashboard](PLACEHOLDER_IMAGE_URL)

> Replace `PLACEHOLDER_IMAGE_URL` with your screenshot showing the ArgoCD dashboard and the application synced status.

---

This setup allows **automatic deployment** whenever you push changes to the main branch. ArgoCD ensures that your EKS cluster always reflects the desired state defined in your Git repository. 🌟
