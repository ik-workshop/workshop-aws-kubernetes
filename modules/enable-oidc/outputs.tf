output "cluster_oidc_issuer_url" {
  # value = module.eks.cluster_oidc_issuer_url
  value = var.cluster_oidc_issuer_url
}

output "openid_connect_provider_arn" {
  value = aws_iam_openid_connect_provider.eks_iam_service_account.arn
}

output "openid_connect_provider_url" {
  value       = aws_iam_openid_connect_provider.eks_iam_service_account.url
  description = "The URL of the identity provider. Corresponds to the iss claim."
}

output "openid_connect_provider_uri" {
  value       = replace(aws_iam_openid_connect_provider.eks_iam_service_account.url, "https://", "")
  description = "The URI of the identity provider. Corresponds to the iss claim."
}

output "thumbprint" {
  value       = data.external.thumbprint.result.thumbprint
  description = "A server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s)."
}
