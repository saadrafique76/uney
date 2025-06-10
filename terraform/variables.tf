variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name for the EKS cluster."
  type        = string
  default     = "my-simple-eks-cluster"
}

variable "kubernetes_version" {
  description = "Kubernetes version for the EKS cluster."
  type        = string
  default     = "1.28" # Choose a supported EKS version
}

variable "instance_type" {
  description = "EC2 instance type for EKS worker nodes."
  type        = string
  default     = "t3.medium"
}

variable "node_group_desired_capacity" {
  description = "Desired number of worker nodes in the EKS node group."
  type        = number
  default     = 2
}

variable "node_group_max_capacity" {
  description = "Maximum number of worker nodes in the EKS node group."
  type        = number
  default     = 4
}

variable "node_group_min_capacity" {
  description = "Minimum number of worker nodes in the EKS node group."
  type        = number
  default     = 1
}

variable "ecr_web_server_repo_name" {
  description = "Name for the ECR repository for the web server image."
  type        = string
  default     = "simple-web-server"
}

variable "ecr_app_server_repo_name" {
  description = "Name for the ECR repository for the application server image."
  type        = string
  default     = "simple-app-server"
}

variable "rds_db_name" {
  description = "The name of the RDS database."
  type        = string
  default     = "mydb"
}

variable "rds_username" {
  description = "Username for the RDS database."
  type        = string
  default     = "admin"
}

variable "rds_password" {
  description = "Password for the RDS database (consider using AWS Secrets Manager for production)."
  type        = string
  sensitive   = true # Mark as sensitive to prevent showing in logs
}
