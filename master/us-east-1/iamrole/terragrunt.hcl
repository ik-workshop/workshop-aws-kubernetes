terraform {
  source = "${path_relative_from_include()}/../modules//iamrole"
}

# Include all settings from the root terragrunt.hcl file
include {
  path = find_in_parent_folders()
}

dependencies {
  paths = ["../cluster", "../oidc"]
}

dependency "oidc" {
  config_path = "../oidc"
}

dependency "cluster" {
  config_path = "../cluster"
}

# These are the variables we have to pass in to use the module specified in the terragrunt configuration above
inputs = {
  openid_connect_provider_uri = dependency.oidc.outputs.openid_connect_provider_uri
  cluster_name                = dependency.cluster.outputs.cluster_id
  target_account_id           = get_aws_account_id()
}
