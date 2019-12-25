# Terragrunt will copy the Terraform configurations specified by the source parameter, along with any files in the
# working directory, into a temporary folder, and execute your Terraform commands in that folder.
terraform {
  source = "git::git@github.com:terraform-aws-modules/terraform-aws-eks.git?ref=v7.0.1"
}

# Include all settings from the root terragrunt.hcl file
include {
  path = find_in_parent_folders()
}

dependencies {
  paths = ["../vpc"]
}

dependency "vpc" {
  config_path = "../vpc"
}

# These are the variables we have to pass in to use the module specified in the terragrunt configuration above
inputs = {
  vpc_id  = dependency.vpc.outputs.vpc_id
  subnets = dependency.vpc.outputs.private_subnets

  cluster_name          = "workshop"
  manage_aws_auth       = true
  write_aws_auth_config  = false

  worker_groups_launch_template = [
    {
      name             = "workshop-"
      instance_type    = "t2.small"
      asg_max_size     = 2
      asg_force_delete = true
    }
  ]

  tags = {
    Terraform = "true"
  }
}
