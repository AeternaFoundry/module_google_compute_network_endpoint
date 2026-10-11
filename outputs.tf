output "compute_network_endpoints_id" {
  description = "Map of id values across all compute_network_endpoints, keyed the same as var.compute_network_endpoints except keys with no id are omitted"
  value       = { for k, v in google_compute_network_endpoint.compute_network_endpoints : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_network_endpoints_deletion_policy" {
  description = "Map of deletion_policy values across all compute_network_endpoints, keyed the same as var.compute_network_endpoints except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_network_endpoint.compute_network_endpoints : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_network_endpoints_instance" {
  description = "Map of instance values across all compute_network_endpoints, keyed the same as var.compute_network_endpoints except keys with no instance are omitted"
  value       = { for k, v in google_compute_network_endpoint.compute_network_endpoints : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "compute_network_endpoints_ip_address" {
  description = "Map of ip_address values across all compute_network_endpoints, keyed the same as var.compute_network_endpoints except keys with no ip_address are omitted"
  value       = { for k, v in google_compute_network_endpoint.compute_network_endpoints : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "compute_network_endpoints_network_endpoint_group" {
  description = "Map of network_endpoint_group values across all compute_network_endpoints, keyed the same as var.compute_network_endpoints except keys with no network_endpoint_group are omitted"
  value       = { for k, v in google_compute_network_endpoint.compute_network_endpoints : k => v.network_endpoint_group if v.network_endpoint_group != null && length(v.network_endpoint_group) > 0 }
}
output "compute_network_endpoints_port" {
  description = "Map of port values across all compute_network_endpoints, keyed the same as var.compute_network_endpoints except keys with no port are omitted"
  value       = { for k, v in google_compute_network_endpoint.compute_network_endpoints : k => v.port if v.port != null }
}
output "compute_network_endpoints_project" {
  description = "Map of project values across all compute_network_endpoints, keyed the same as var.compute_network_endpoints except keys with no project are omitted"
  value       = { for k, v in google_compute_network_endpoint.compute_network_endpoints : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_network_endpoints_zone" {
  description = "Map of zone values across all compute_network_endpoints, keyed the same as var.compute_network_endpoints except keys with no zone are omitted"
  value       = { for k, v in google_compute_network_endpoint.compute_network_endpoints : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

