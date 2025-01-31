# 🚀 Auto-Detect Best Container Build Tool

## 📌 Overview
This GitHub repository automatically detects:
- **Programming Language** of the project.
- **Kubernetes Deployment** presence.
- **Frequent Dockerfile Changes**.
- **Security Level** based on GitHub metadata.

It then **automatically selects the best container build tool** for the project.

## 🔧 How It Works
1. **Language Detection**  
   - Scans the repository for the dominant programming language.
   
2. **Environment Checks**  
   - Detects Kubernetes (`k8s`) configurations.
   - Detects frequent Dockerfile modifications.
   - Checks repository security level.

3. **Container Tool Selection**
   - If **Java**, it suggests **Jib**.
   - If **Node.js**, it suggests **Buildpacks**.
   - If **Kubernetes present**, it suggests **Kaniko**.
   - If **security is high**, it suggests **Podman**.
   - If **frequent rebuilding is needed**, it suggests **BuildKit**.

## 📂 Repository Structure
