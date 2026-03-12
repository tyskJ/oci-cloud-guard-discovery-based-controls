/************************************************************
Events
************************************************************/
resource "oci_events_rule" "this" {
  compartment_id = oci_identity_compartment.workload.id
  display_name   = "cloud-guard-event"
  is_enabled     = true
  condition = jsonencode({
    eventType = ["com.oraclecloud.cloudguard.problemdetected"]
    data      = {}
  })
  actions {
    actions {
      is_enabled  = true
      action_type = "ONS"
      topic_id    = oci_ons_notification_topic.this.topic_id
    }
  }
}