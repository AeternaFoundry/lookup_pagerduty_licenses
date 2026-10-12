data "pagerduty_licenses" "licenses_lookup" {
  for_each = var.licenses_lookup

}

