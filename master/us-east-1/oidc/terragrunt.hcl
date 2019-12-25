terraform {
  source = "/Users/ivankatliarchuk/source/self/workshop/workshop-kubernetes/modules/enable-oidc"
}

# Include all settings from the root terragrunt.hcl file
include {
  path = find_in_parent_folders()
}

dependencies {
  paths = ["../cluster"]
}

dependency "cluster" {
  config_path = "../cluster"
}

# These are the variables we have to pass in to use the module specified in the terragrunt configuration above
inputs = {
  cluster_oidc_issuer_url = dependency.cluster.outputs.cluster_oidc_issuer_url
}
