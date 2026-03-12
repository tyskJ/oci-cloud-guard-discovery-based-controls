/************************************************************
Bucket
************************************************************/
resource "oci_objectstorage_bucket" "this" {
  compartment_id        = oci_identity_compartment.workload.id
  namespace             = var.namespace
  name                  = "test-bucket"
  storage_tier          = "Standard"
  auto_tiering          = "Disabled"
  versioning            = "Disabled"
  object_events_enabled = false
  access_type           = "ObjectRead" # NoPublicAccess / ObjectRead / ObjectReadWithoutList
}