resource "google_compute_network_endpoint" "compute_network_endpoints" {
  for_each = var.compute_network_endpoints

  ip_address             = each.value.ip_address
  network_endpoint_group = each.value.network_endpoint_group
  deletion_policy        = each.value.deletion_policy
  instance               = each.value.instance
  port                   = each.value.port
  project                = each.value.project
  zone                   = each.value.zone

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

