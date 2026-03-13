/************************************************************
Events
************************************************************/
resource "oci_events_rule" "root" {
  compartment_id = var.tenancy_ocid
  display_name   = "cloud-guard-event-root"
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

resource "oci_events_rule" "child" {
  compartment_id = oci_identity_compartment.workload.id
  display_name   = "cloud-guard-event-child"
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