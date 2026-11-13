output "licenses_lookup_id" {
  description = "Map of id values across all licenses_lookup, keyed the same as var.licenses_lookup"
  value       = { for k, v in data.pagerduty_licenses.licenses_lookup : k => v.id }
}
output "licenses_lookup_licenses" {
  description = "Map of licenses values across all licenses_lookup, keyed the same as var.licenses_lookup"
  value       = { for k, v in data.pagerduty_licenses.licenses_lookup : k => v.licenses }
}

