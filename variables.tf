variable "compute_network_endpoints" {
  description = <<EOT
Map of compute_network_endpoints, attributes below
Required:
    - ip_address
    - network_endpoint_group
Optional:
    - deletion_policy
    - instance
    - port
    - project
    - zone
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    ip_address             = string
    network_endpoint_group = string
    deletion_policy        = optional(string)
    instance               = optional(string)
    port                   = optional(number)
    project                = optional(string)
    zone                   = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

