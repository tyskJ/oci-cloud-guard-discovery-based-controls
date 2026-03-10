# /************************************************************
# Region List
# ************************************************************/
locals {
  region_map = {
    for r in data.oci_identity_regions.regions.regions :
    r.key => r.name
  }
}

# /************************************************************
# Cloud Guard
# ************************************************************/
locals {
  cloud_guard_disabled = data.oci_cloud_guard_cloud_guard_configuration.this.status == "DISABLED"
}