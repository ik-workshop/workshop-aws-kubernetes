data aws_eks_cluster this {
  name = var.cluster_name
}

data aws_eks_cluster_auth this {
  name = data.aws_eks_cluster.this.name
}

locals {
  cluster_ca_certificate = data.aws_eks_cluster.this.certificate_authority[0].data
  cluster_api_endpoint   = data.aws_eks_cluster.this.endpoint
  cluster_auth_token     = data.aws_eks_cluster_auth.this.token
}


provider kubernetes {
  host                   = local.cluster_api_endpoint
  cluster_ca_certificate = base64decode(local.cluster_ca_certificate)
  token                  = local.cluster_auth_token
  load_config_file       = false
}
