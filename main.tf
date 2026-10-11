resource "oci_load_balancer_listener" "load_balancer_listeners" {
  for_each = var.load_balancer_listeners

  default_backend_set_name = each.value.default_backend_set_name
  load_balancer_id         = each.value.load_balancer_id
  name                     = each.value.name
  port                     = each.value.port
  protocol                 = each.value.protocol
  hostname_names           = each.value.hostname_names
  path_route_set_name      = each.value.path_route_set_name
  routing_policy_name      = each.value.routing_policy_name
  rule_set_names           = each.value.rule_set_names

  dynamic "connection_configuration" {
    for_each = each.value.connection_configuration != null ? [each.value.connection_configuration] : []
    content {
      backend_tcp_proxy_protocol_options = connection_configuration.value.backend_tcp_proxy_protocol_options
      backend_tcp_proxy_protocol_version = connection_configuration.value.backend_tcp_proxy_protocol_version
      idle_timeout_in_seconds            = connection_configuration.value.idle_timeout_in_seconds
    }
  }

  dynamic "ssl_configuration" {
    for_each = each.value.ssl_configuration != null ? [each.value.ssl_configuration] : []
    content {
      certificate_ids                   = ssl_configuration.value.certificate_ids
      certificate_name                  = ssl_configuration.value.certificate_name
      cipher_suite_name                 = ssl_configuration.value.cipher_suite_name
      has_session_resumption            = ssl_configuration.value.has_session_resumption
      protocols                         = ssl_configuration.value.protocols
      server_order_preference           = ssl_configuration.value.server_order_preference
      trusted_certificate_authority_ids = ssl_configuration.value.trusted_certificate_authority_ids
      verify_depth                      = ssl_configuration.value.verify_depth
      verify_peer_certificate           = ssl_configuration.value.verify_peer_certificate
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

