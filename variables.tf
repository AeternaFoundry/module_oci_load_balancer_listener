variable "load_balancer_listeners" {
  description = <<EOT
Map of load_balancer_listeners, attributes below
Required:
    - default_backend_set_name
    - load_balancer_id
    - name
    - port
    - protocol
Optional:
    - hostname_names
    - path_route_set_name
    - routing_policy_name
    - rule_set_names
    - connection_configuration (block):
        - backend_tcp_proxy_protocol_options (optional)
        - backend_tcp_proxy_protocol_version (optional)
        - idle_timeout_in_seconds (required)
    - ssl_configuration (block):
        - certificate_ids (optional)
        - certificate_name (optional)
        - cipher_suite_name (optional)
        - has_session_resumption (optional)
        - protocols (optional)
        - server_order_preference (optional)
        - trusted_certificate_authority_ids (optional)
        - verify_depth (optional)
        - verify_peer_certificate (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    default_backend_set_name = string
    load_balancer_id         = string
    name                     = string
    port                     = number
    protocol                 = string
    hostname_names           = optional(list(string))
    path_route_set_name      = optional(string)
    routing_policy_name      = optional(string)
    rule_set_names           = optional(list(string))
    connection_configuration = optional(object({
      backend_tcp_proxy_protocol_options = optional(list(string))
      backend_tcp_proxy_protocol_version = optional(number)
      idle_timeout_in_seconds            = string
    }))
    ssl_configuration = optional(object({
      certificate_ids                   = optional(list(string))
      certificate_name                  = optional(string)
      cipher_suite_name                 = optional(string)
      has_session_resumption            = optional(bool)
      protocols                         = optional(list(string))
      server_order_preference           = optional(string)
      trusted_certificate_authority_ids = optional(list(string))
      verify_depth                      = optional(number)
      verify_peer_certificate           = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

