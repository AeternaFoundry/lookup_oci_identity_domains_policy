data "oci_identity_domains_policy" "identity_domains_policy_lookup" {
  for_each = var.identity_domains_policy_lookup

  idcs_endpoint                = each.value.idcs_endpoint
  policy_id                    = each.value.policy_id
  attribute_sets               = each.value.attribute_sets
  attributes                   = each.value.attributes
  authorization                = each.value.authorization
  resource_type_schema_version = each.value.resource_type_schema_version
}

