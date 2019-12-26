resource aws_iam_role pod_identity {
  name_prefix = "pod-iam-identity"

  assume_role_policy = templatefile("${path.module}/templates/web-identity-role.json", {
    account_id      = var.target_account_id
    oidc_provider   = var.openid_connect_provider_uri
    namespace       = "default"
    service_account = "pod-iam-identity"
  })

  tags = {
    Workshop = "pod-identity"
  }
}
