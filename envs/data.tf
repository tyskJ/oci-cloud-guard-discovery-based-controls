# /************************************************************
# Region
# ************************************************************/
data "oci_identity_regions" "regions" {
}

# output "tokyo_region" {
#   value = lookup({
#     for r in data.oci_identity_regions.regions.regions :
#     r.key => r.name
#   }, "NRT")
# }

# /************************************************************
# Cloud Guard
# ************************************************************/
data "oci_cloud_guard_cloud_guard_configuration" "this" {
  compartment_id = var.tenancy_ocid
}