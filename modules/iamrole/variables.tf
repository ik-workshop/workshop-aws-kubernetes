variable "openid_connect_provider_uri" {
  type        = string
  description = "The URI of the identity provider. Corresponds to the iss claim."
}

variable "target_account_id" {
  type        = string
  description = "The AWS Account ID number of the account that owns or contains the calling entity."
}

variable "cluster_name" {
  type        = string
  description = "The name/id of the EKS cluster."
}
