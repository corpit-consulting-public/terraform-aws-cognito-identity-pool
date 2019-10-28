resource "aws_cognito_identity_pool" "main" {
  identity_pool_name               = var.identity_pool_name
  allow_unauthenticated_identities = var.allow_unauthenticated_identities
  cognito_identity_providers {
    client_id               = var.client_id
    provider_name           = var.provider_name
    server_side_token_check = var.server_side_token_check
  }
  supported_login_providers    = var.supported_login_providers
  saml_provider_arns           = var.saml_provider_arns
  openid_connect_provider_arns = var.openid_connect_provider_arns
}
