/************************************************************
Compartment - workload
************************************************************/
resource "oci_identity_compartment" "workload" {
  compartment_id = var.tenancy_ocid
  name           = "oci-cloud-guard-discovery-based-controls"
  description    = "Workload For oci-cloud-guard-discovery-based-controls"
  enable_delete  = true
}