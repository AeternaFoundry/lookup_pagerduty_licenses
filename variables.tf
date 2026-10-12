variable "licenses_lookup" {
  description = <<EOT
Map of licenses_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

