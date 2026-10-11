output "load_balancer_listeners_id" {
  description = "Map of id values across all load_balancer_listeners, keyed the same as var.load_balancer_listeners except keys with no id are omitted"
  value       = { for k, v in oci_load_balancer_listener.load_balancer_listeners : k => v.id if v.id != null && length(v.id) > 0 }
}
output "load_balancer_listeners_connection_configuration" {
  description = "Map of connection_configuration values across all load_balancer_listeners, keyed the same as var.load_balancer_listeners except keys with no connection_configuration are omitted"
  value       = { for k, v in oci_load_balancer_listener.load_balancer_listeners : k => one(v.connection_configuration) if v.connection_configuration != null && length(v.connection_configuration) > 0 }
}
output "load_balancer_listeners_default_backend_set_name" {
  description = "Map of default_backend_set_name values across all load_balancer_listeners, keyed the same as var.load_balancer_listeners except keys with no default_backend_set_name are omitted"
  value       = { for k, v in oci_load_balancer_listener.load_balancer_listeners : k => v.default_backend_set_name if v.default_backend_set_name != null && length(v.default_backend_set_name) > 0 }
}
output "load_balancer_listeners_hostname_names" {
  description = "Map of hostname_names values across all load_balancer_listeners, keyed the same as var.load_balancer_listeners except keys with no hostname_names are omitted"
  value       = { for k, v in oci_load_balancer_listener.load_balancer_listeners : k => v.hostname_names if v.hostname_names != null && length(v.hostname_names) > 0 }
}
output "load_balancer_listeners_load_balancer_id" {
  description = "Map of load_balancer_id values across all load_balancer_listeners, keyed the same as var.load_balancer_listeners except keys with no load_balancer_id are omitted"
  value       = { for k, v in oci_load_balancer_listener.load_balancer_listeners : k => v.load_balancer_id if v.load_balancer_id != null && length(v.load_balancer_id) > 0 }
}
output "load_balancer_listeners_name" {
  description = "Map of name values across all load_balancer_listeners, keyed the same as var.load_balancer_listeners except keys with no name are omitted"
  value       = { for k, v in oci_load_balancer_listener.load_balancer_listeners : k => v.name if v.name != null && length(v.name) > 0 }
}
output "load_balancer_listeners_path_route_set_name" {
  description = "Map of path_route_set_name values across all load_balancer_listeners, keyed the same as var.load_balancer_listeners except keys with no path_route_set_name are omitted"
  value       = { for k, v in oci_load_balancer_listener.load_balancer_listeners : k => v.path_route_set_name if v.path_route_set_name != null && length(v.path_route_set_name) > 0 }
}
output "load_balancer_listeners_port" {
  description = "Map of port values across all load_balancer_listeners, keyed the same as var.load_balancer_listeners except keys with no port are omitted"
  value       = { for k, v in oci_load_balancer_listener.load_balancer_listeners : k => v.port if v.port != null }
}
output "load_balancer_listeners_protocol" {
  description = "Map of protocol values across all load_balancer_listeners, keyed the same as var.load_balancer_listeners except keys with no protocol are omitted"
  value       = { for k, v in oci_load_balancer_listener.load_balancer_listeners : k => v.protocol if v.protocol != null && length(v.protocol) > 0 }
}
output "load_balancer_listeners_routing_policy_name" {
  description = "Map of routing_policy_name values across all load_balancer_listeners, keyed the same as var.load_balancer_listeners except keys with no routing_policy_name are omitted"
  value       = { for k, v in oci_load_balancer_listener.load_balancer_listeners : k => v.routing_policy_name if v.routing_policy_name != null && length(v.routing_policy_name) > 0 }
}
output "load_balancer_listeners_rule_set_names" {
  description = "Map of rule_set_names values across all load_balancer_listeners, keyed the same as var.load_balancer_listeners except keys with no rule_set_names are omitted"
  value       = { for k, v in oci_load_balancer_listener.load_balancer_listeners : k => v.rule_set_names if v.rule_set_names != null && length(v.rule_set_names) > 0 }
}
output "load_balancer_listeners_ssl_configuration" {
  description = "Map of ssl_configuration values across all load_balancer_listeners, keyed the same as var.load_balancer_listeners except keys with no ssl_configuration are omitted"
  value       = { for k, v in oci_load_balancer_listener.load_balancer_listeners : k => one(v.ssl_configuration) if v.ssl_configuration != null && length(v.ssl_configuration) > 0 }
}
output "load_balancer_listeners_state" {
  description = "Map of state values across all load_balancer_listeners, keyed the same as var.load_balancer_listeners except keys with no state are omitted"
  value       = { for k, v in oci_load_balancer_listener.load_balancer_listeners : k => v.state if v.state != null && length(v.state) > 0 }
}

