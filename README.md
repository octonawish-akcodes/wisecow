# Wisecow Application Deployment

## Overview

The Wisecow application displays fortune and cowsay messages. This repository contains the source code and configuration files to containerize and deploy the application on Kubernetes with TLS support and CI/CD automation.

## Prerequisites

- **Docker:** For containerization.
- **Kubernetes:** For deployment.
- **GitHub Actions:** For CI/CD automation.

## Setup

### Dockerization

1. **Build the Docker Image:**

   ```bash
   docker build -t <docker-registry>/wisecow:latest .
   ```

2. **Run Locally:**

   ```bash
   docker run -p 4499:4499 <docker-registry>/wisecow:latest
   ```

### Kubernetes Deployment

1. **Apply Kubernetes Manifests:**

   ```bash
   kubectl apply -f dep.yaml
   kubectl apply -f service.yaml
   kubectl apply -f ingress.yaml
   ```

2. **Access the Application:**
   - The application will be available at the specified domain with HTTPS.

### CI/CD

- **Automated Builds & Deployments:** Changes to the repository will trigger automatic builds and deployments via GitHub Actions.

## How to Use

1. **Run the Application Script:**

   ```bash
   ./wisecow.sh
   ```

2. **Access the Application:**
   - Open a browser and navigate to `https://<your-domain>`, default to `localhost` on port `4499`.
