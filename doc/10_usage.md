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
