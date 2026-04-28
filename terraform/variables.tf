variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ecr_repository_name" {
  description = "ECR repository name"
  type        = string
  default     = "devops-demo-app"
}

variable "github_org" {
  description = "GitHub organisation or username"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
  default     = "cosign-image-supply-chain"
}

variable "eks_cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "supply-chain-cluster"
}
