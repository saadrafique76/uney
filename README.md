# Scalable Web Application Stack on AWS EKS

This repository contains an Infrastructure as Code (IaC) solution to deploy a scalable web application stack on AWS using Kubernetes (EKS) for orchestration, Terraform for infrastructure provisioning, and GitHub Actions for CI/CD.

## Stack Components:

* **Web Server:** Containerized Node.js application serving static content and acting as an entry point.
* **Application Server:** Containerized Node.js application providing a simple API.
* **Database Server:** AWS RDS (MySQL) - a fully managed relational database service.

## Architecture Design:

The application is deployed on an AWS EKS (Elastic Kubernetes Service) cluster.
* **VPC & Subnets:** Custom VPC with public subnets for external-facing Load Balancers and private subnets for EKS worker nodes and RDS instance.
* **EKS Cluster:** Manages container orchestration.
* **ECR:** Amazon Elastic Container Registry stores our Docker images.
* **Web Server:** Deployed as a Kubernetes Deployment and exposed via a `LoadBalancer` service, providing public access.
* **Application Server:** Deployed as a Kubernetes Deployment and exposed via a `ClusterIP` service (internal-only), accessible by the web server.
* **Database:** AWS RDS instance, providing persistent and managed database services. The application server connects to RDS.
* **Scalability:** Kubernetes Deployments are configured with multiple replicas and can be scaled horizontally. EKS Node Groups are configured with auto-scaling to add/remove EC2 instances based on demand.
* **Security:** IAM roles for EKS components, security groups for network isolation, and internal `ClusterIP` services for inter-service communication. Database credentials are handled via Kubernetes Secrets (should be managed securely, e.g., from AWS Secrets Manager).

## Prerequisites:

Before you begin, ensure you have the following installed and configured:

1.  **AWS Account:** An active AWS account.
2.  **AWS CLI:** Configured with credentials that have administrative access or specific permissions for EKS, EC2, RDS, VPC, and ECR.
3.  **Terraform:** Version 1.0.0 or higher.
4.  **`kubectl`:** Kubernetes command-line tool.
5.  **`aws-iam-authenticator`:** For `kubectl` to authenticate with EKS.
6.  **Docker:** For building and testing images locally.
7.  **Git:** For version control.

## Setup Instructions:

### 1. Repository Clone & Initial Setup:

```bash
git clone [https://github.com/your-username/your-repo-name.git](https://github.com/your-username/your-repo-name.git)
cd your-repo-name
