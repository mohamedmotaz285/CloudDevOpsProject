## ☸️ Kubernetes Deployment

The application is deployed to the **Kubernetes cluster** using manifests in the `k8s/` folder. This ensures a structured, scalable, and reliable deployment.

### 🗂 Repository Structure (`k8s/`)

```
k8s/
├── namespace.yaml     # Defines the namespace 'ivolve'
├── deployment.yaml    # Application deployment configuration
├── service.yaml       # LoadBalancer service exposing the app
```

### 🛠 Deployment Steps

1. **Apply the namespace:**

   ```bash
   kubectl apply -f k8s/namespace.yaml
   ```
2. **Deploy the application:**

   ```bash
   kubectl apply -f k8s/deployment.yaml
   ```
3. **Expose the service:**

   ```bash
   kubectl apply -f k8s/service.yaml
   ```
4. **Check the status:**

   ```bash
   kubectl get pods -n ivolve
   kubectl get svc -n ivolve
   ```
5. **Access the application:**
   Use the **LoadBalancer IP** from the service output to open the application in your browser 🌐.

### 📸 Screenshots

(![Screenshot 2025-11-19 203251.png]()

---

This setup ensures your application runs in a **namespace-isolated environment** with auto-scaling possibilities and high availability. 💪
