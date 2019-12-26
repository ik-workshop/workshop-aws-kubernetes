output "pod_identity_role_arn" {
  value       = aws_iam_role.pod_identity.arn
  description = "The Amazon Resource Name (ARN) specifying the role."
}

output "service_account_name" {
  value = kubernetes_service_account.pod_identity.metadata[0].name
}
