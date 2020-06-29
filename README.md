
# tf-aws-cognito-identity-pool

Terraform module that creates Cognito User Pool resources in AWS

  Amazon Cognito identity pools provide temporary AWS credentials for users who are guests (unauthenticated) and for users who have been authenticated and received a token. An identity pool is a store of user identity data specific to your account.

## Terraform Version

Terraform 0.12. Pin module version to `~> v2.0`. Submit pull-requests to `teraform012` branch.

Terraform 0.11. Pin module version to `~> v1.0`. Submit pull-requests to `terraform11` branch.
## Usage

```hcl

module "cognito-identity-pool" {
  source                           = "corpit-consulting-public/cognito-identity-pool-mod/aws"
  version                          = "v2.0.0"
  identity_pool_name               = var.identity_pool_name
  allow_unauthenticated_identities = var.allow_unauthenticated_identities
  client_id                        = module.cognito-user-pool.id
  provider_name                    = var.provider_name
  server_side_token_check          = var.server_side_token_check
}


```


## README.md
This README file was created runnnign generate-readme.sh placed insinde hooks directory.
If you want to update README.md file, run that script while being in 'hooks' folder.
