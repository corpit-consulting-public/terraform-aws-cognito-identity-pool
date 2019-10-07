variable "identity_pool_name" {
  type        = "string"
  description = "The cognito identity pool name"
}

variable "allow_unauthenticated_identities" {
  type        = "string"
  description = "Whether the identity pool supports unauthenticated logins or not.(true or false)"
}

variable "developer_provider_name" {
  type        = "string"
  description = "The domain by which Cognito will refer to your users. This name acts as a placeholder that allows your backend and the Cognito service to communicate about the developer provider."
  default     = ""
}

variable "cognito_identity_providers" {
  type        = "map"
  description = "An array of Amazon Cognito Identity user pools and their client IDs."
  default     = {}
}

variable "openid_connect_provider_arns" {
  type        = "list"
  description = "A list of OpendID Connect provider ARNs."
  default     = []
}

variable "saml_provider_arns" {
  type        = "list"
  description = "An array of Amazon Resource Names (ARNs) of the SAML provider for your identity."
  default     = []
}

variable "supported_login_providers" {
  type        = "map"
  description = "Key-Value pairs mapping provider names to provider app IDs."
  default     = {}
}

###Cognito Identity Providers

variable "client_id" {
  type        = "string"
  description = "The client ID for the Amazon Cognito Identity User Pool."
  default     = ""
}

variable "provider_name" {
  type        = "string"
  description = "The provider name for an Amazon Cognito Identity User Pool."
  default     = ""
}

variable "server_side_token_check" {
  type        = "string"
  description = "Whether server-side token validation is enabled for the identity provider’s token or not.(true or false)" 
  default     = ""
}
