# Workshop Kubernetes

Kubernetes Reference Architecture

This repository contains rather complete infrastructure configurations where Terragrunt is used to manage infrastructure for Kubernetes Workshop.

Where infrastructrue currently deployed

## Prerequisits

- [Terraform](https://github.com/hashicorp/terraform)
- [Terragrunt](https://github.com/gruntwork-io/terragrunt)

## Quick start

1. [Install Terraform 0.12 or newer](https://www.terraform.io/intro/getting-started/install.html)
1. [Install Terragrunt 0.19 or newer](https://github.com/gruntwork-io/terragrunt#install-terragrunt)
1. Optionally, [install pre-commit hooks](https://pre-commit.com/#install) to keep Terraform formatting and documentation up-to-date.

If you are using macOS you can install all dependencies using [Homebrew](https://brew.sh/):

    $ brew bungle

## Configure access to AWS account

- [AWS Profile Setup](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html)

## Create and manage your infrastructure

Navigate through layers to review and customize values inside `inputs` block.

There are two ways to manage infrastructure (slower&complete, or faster&granular):
- **Region as a whole (slower&complete).** Run this command to create infrastructure in all layers in a single region:

```
$ cd master/us-east-1
$ terragrunt apply-all
```

- **As a single layer (faster&granular).** Run this command to create infrastructure in a single layer (eg, `rds_2`):

```
$ cd master/us-east-1/vpc
$ terragrunt apply
```

How to destroy

```
$ cd master/us-east-1
$ terragrunt destroy-all
```

## Technical overview

> Why infrastructure deployed into a  `N.Virginia|us-east-1`?

To make sure all the services are fully supported.

> Why using terragrunt instead of vanilla Terraform?

Most of the advantages described in [this article](https://blog.gruntwork.io/terragrunt-how-to-keep-your-terraform-code-dry-and-maintainable-f61ae06959d8)

> IS there is any reference infrastructure with Terragrunt?

[Here](https://github.com/gruntwork-io/terragrunt-infrastructure-live-example)
[Documentation](https://terragrunt.gruntwork.io/)