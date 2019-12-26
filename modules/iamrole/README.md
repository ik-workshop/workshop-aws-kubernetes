#  Kubernetes service account and IAM role setup

Create a kubernetes service account and setup the IAM role that defines the access
to the AWS Resources.

## More Information

- [AWS Documentation](https://docs.aws.amazon.com/eks/latest/userguide/iam-roles-for-service-accounts.html)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster\_name | The name/id of the EKS cluster. | string | n/a | yes |
| openid\_connect\_provider\_uri | The URI of the identity provider. Corresponds to the iss claim. | string | n/a | yes |
| target\_account\_id | The AWS Account ID number of the account that owns or contains the calling entity. | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| pod\_identity\_role\_arn | The Amazon Resource Name \(ARN\) specifying the role. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->