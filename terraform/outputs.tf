output "eks_cluster_name" {
  description = "The name of the EKS cluster."
  value       = aws_eks_cluster.main.name
}

output "web_server_ecr_repository_url" {
  description = "URL of the ECR repository for the web server."
  value       = aws_ecr_repository.web_server.repository_url
}

output "app_server_ecr_repository_url" {
  description = "URL of the ECR repository for the application server."
  value       = aws_ecr_repository.app_server.repository_url
}

output "web_server_load_balancer_dns_name" {
  description = "DNS name of the Load Balancer created for the web server service."
  value       = aws_eks_cluster.main.name # Placeholder, actual LB DNS is from K8s service
  # In a real scenario, you'd query the K8s service for its LoadBalancer IP/DNS
  # Or output the service directly if using a tool like Helm.
  # For manual check: kubectl get service web-server-service -o jsonpath='{.status.loadBalancer.ingress[0].hostname}'
}

output "rds_endpoint" {
  description = "The connection endpoint for the RDS database instance."
  value       = aws_db_instance.mysql_db.address
}
