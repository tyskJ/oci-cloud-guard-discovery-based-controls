/************************************************************
Region
************************************************************/
data "oci_identity_regions" "regions" {
}

# output "tokyo_region" {
#   value = lookup({
#     for r in data.oci_identity_regions.regions.regions :
#     r.key => r.name
#   }, "NRT")
# }

/************************************************************
Cloud Guard Managed Recipes
************************************************************/
data "oci_cloud_guard_detector_recipes" "managed" {
  # Oracle 管理のレシピ (Detector & Responder) は Cloud Guard が有効化されているときのみ利用可能となるため依存関係を追加
  depends_on = [
    oci_cloud_guard_cloud_guard_configuration.this
  ]
  compartment_id = var.tenancy_ocid
}