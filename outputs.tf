output "licenses_lookup_id" {
  description = "Map of id values across all licenses_lookup, keyed the same as var.licenses_lookup except keys with no id are omitted"
  value       = { for k, v in data.pagerduty_licenses.licenses_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "licenses_lookup_licenses" {
  description = "Map of licenses values across all licenses_lookup, keyed the same as var.licenses_lookup except keys with no licenses are omitted"
  value       = { for k, v in data.pagerduty_licenses.licenses_lookup : k => v.licenses if v.licenses != null && length(v.licenses) > 0 }
}

