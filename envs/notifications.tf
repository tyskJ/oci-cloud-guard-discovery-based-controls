/************************************************************
Topics
************************************************************/
resource "oci_ons_notification_topic" "this" {
  compartment_id = oci_identity_compartment.workload.id
  name           = "cloud-guard-topic"
}

/************************************************************
Subscriptions
************************************************************/
resource "oci_ons_subscription" "this" {
  compartment_id = oci_identity_compartment.workload.id
  topic_id       = oci_ons_notification_topic.this.topic_id
  protocol       = "EMAIL"
  endpoint       = var.subscription_email
}