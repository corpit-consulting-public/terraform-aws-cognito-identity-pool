## Usage

```hcl

module "cognito-identity-pool" {
  source                           = "./modules/tf-aws-cognito-identity-pool"
  identity_pool_name               = "${var.identity_pool_name}"
  allow_unauthenticated_identities = "${var.allow_unauthenticated_identities}"
  client_id                        = "${module.cognito-user-pool.id}"
  provider_name                    = "${var.provider_name}"
  server_side_token_check          = "${var.server_side_token_check}"
}

```
