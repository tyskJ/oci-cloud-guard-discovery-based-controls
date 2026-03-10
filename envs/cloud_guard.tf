/************************************************************
Configuration
************************************************************/
resource "oci_cloud_guard_cloud_guard_configuration" "this" {
  depends_on = [
    oci_identity_policy.cloud_guard_policy
  ]
  compartment_id        = var.tenancy_ocid
  reporting_region      = local.region_map["NRT"]
  status                = "ENABLED" # ENABLED or DISABLED
  self_manage_resources = false
}

/************************************************************
Targets
************************************************************/
resource "oci_cloud_guard_target" "root" {
  depends_on = [
    oci_cloud_guard_cloud_guard_configuration.this
  ]
  compartment_id       = var.tenancy_ocid
  display_name         = "root-compartment"
  target_resource_id   = var.tenancy_ocid
  target_resource_type = "COMPARTMENT"
  target_detector_recipes {
    detector_recipe_id = local.detector_recipes_map["Oracle_Managed_Recipe_Configuration"]
  }
  target_detector_recipes {
    detector_recipe_id = local.detector_recipes_map["Oracle_Managed_Recipe_Activity"]
  }
}