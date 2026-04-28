output "ecr_repository_url" {
  description = "ECR repository URL"
  value       = aws_ecr_repository.app.repository_url
}

output "ecr_registry" {
  description = "ECR registry (account.dkr.ecr.region.amazonaws.com)"
  value       = split("/", aws_ecr_repository.app.repository_url)[0]
}

output "github_actions_role_arn" {
  description = "IAM role ARN for GitHub Actions — add as AWS_ROLE_ARN secret"
  value       = aws_iam_role.github_actions.arn
}

output "github_oidc_provider_arn" {
  description = "GitHub OIDC provider ARN"
  value       = aws_iam_openid_connect_provider.github.arn
}
