/************************************************************
Topics
************************************************************/
resource "oci_ons_notification_topic" "this" {
  compartment_id = var.tenancy_ocid
  name           = "cloud-guard-topic"
}

/************************************************************
Subscriptions
************************************************************/
resource "oci_ons_subscription" "this" {
  compartment_id = var.tenancy_ocid
  topic_id       = oci_ons_notification_topic.this.topic_id
  protocol       = "EMAIL"
  endpoint       = var.subscription_email
}