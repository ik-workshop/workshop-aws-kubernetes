# enable-oidc

Enabling IAM Roles for Service Accounts on your Cluster.

## Prerequisits

> Which kuberentes version are supported?

EKS Kubernetes version 1.14 clusters, and clusters that were updated to versions 1.14 or 1.13 on or after September 3rd, 2019. So its a time to update.

> Which SDK versions are supported?

- Java — 1.11.623
- Java (Version 2) — 2.7.36
- Go — 1.23.13
- Python (Boto3) — 1.9.220
- Python (botocore) — 1.12.200
- AWS CLI — 1.16.232
- Node — 2.521.0
- Ruby — 2.11.345
- C++ — 1.7.174
- PHP — 3.110.7

## More Information

- [AWS Documentation](https://docs.aws.amazon.com/eks/latest/userguide/iam-roles-for-service-accounts.html)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster\_oidc\_issuer\_url |  | string | n/a | yes |
| oidc\_root\_ca\_thumbprint | Thumbprint of Root CA for EKS OIDC, Valid until 2037 | string | `"9e99a48a9960b14926bb7f3b02e22da2b0ab7280"` | no |

## Outputs

| Name | Description |
|------|-------------|
| cluster\_oidc\_issuer\_url |  |
| openid\_connect\_provider\_arn |  |
| openid\_connect\_provider\_uri | The URI of the identity provider. Corresponds to the iss claim. |
| openid\_connect\_provider\_url | The URL of the identity provider. Corresponds to the iss claim. |
| thumbprint | A server certificate thumbprints for the OpenID Connect identity provider's server certificate. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->