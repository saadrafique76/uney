terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Use a compatible AWS provider version
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0" # Required if you add Kubernetes provider interaction
    }
  }
}
