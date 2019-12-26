output "pod_identity_role_arn" {
  value       = aws_iam_role.pod_identity.arn
  description = "The Amazon Resource Name (ARN) specifying the role."
}
