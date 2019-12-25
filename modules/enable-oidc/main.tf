data external thumbprint {
  program = ["bash", "${path.module}/scripts/thumbprint.sh", var.aws_region]
}

resource aws_iam_openid_connect_provider eks_iam_service_account {
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = [data.external.thumbprint.result.thumbprint]
  url             = var.cluster_oidc_issuer_url
}