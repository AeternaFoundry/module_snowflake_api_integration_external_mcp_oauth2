resource "snowflake_api_integration_external_mcp_oauth2" "api_integration_external_mcp_oauth2s" {
  for_each = var.api_integration_external_mcp_oauth2s

  api_allowed_prefixes         = each.value.api_allowed_prefixes
  enabled                      = each.value.enabled
  name                         = each.value.name
  oauth_authorization_endpoint = each.value.oauth_authorization_endpoint
  oauth_client_id              = each.value.oauth_client_id
  oauth_client_secret          = each.value.oauth_client_secret
  oauth_token_endpoint         = each.value.oauth_token_endpoint
  api_blocked_prefixes         = each.value.api_blocked_prefixes
  comment                      = each.value.comment
  oauth_client_auth_method     = each.value.oauth_client_auth_method
  oauth_refresh_token_validity = each.value.oauth_refresh_token_validity

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

