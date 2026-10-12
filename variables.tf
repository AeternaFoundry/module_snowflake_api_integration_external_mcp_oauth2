variable "api_integration_external_mcp_oauth2s" {
  description = <<EOT
Map of api_integration_external_mcp_oauth2s, attributes below
Required:
    - api_allowed_prefixes
    - enabled
    - name
    - oauth_authorization_endpoint
    - oauth_client_id
    - oauth_client_secret
    - oauth_token_endpoint
Optional:
    - api_blocked_prefixes
    - comment
    - oauth_client_auth_method
    - oauth_refresh_token_validity
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    api_allowed_prefixes         = list(string)
    enabled                      = bool
    name                         = string
    oauth_authorization_endpoint = string
    oauth_client_id              = string
    oauth_client_secret          = string
    oauth_token_endpoint         = string
    api_blocked_prefixes         = optional(list(string))
    comment                      = optional(string)
    oauth_client_auth_method     = optional(string)
    oauth_refresh_token_validity = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

