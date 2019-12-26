resource aws_iam_openid_connect_provider eks_iam_service_account {
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = [var.oidc_root_ca_thumbprint]
  url             = var.cluster_oidc_issuer_url
}