# ARM template for Service Bus queue
data "template_file" "queue_template" {
  template = "${file("${path.module}/template/queue_template.json")}"
}

# Create Azure Service Bus queue
resource "azurerm_template_deployment" "queue" {
  template_body       = "${data.template_file.queue_template.rendered}"
  name                = "${var.name}"
  deployment_mode     = "Incremental"
  resource_group_name = "${var.resource_group_name}"
  count               = "${var.create_queue == "true" ? 1 : 0}"

  parameters = {
    serviceBusNamespaceName             = "${var.namespace_name}"
    serviceBusQueueName                 = "${var.name}"
    lockDuration                        = "${var.lock_duration}"
    maxDeliveryCount                    = "${var.max_delivery_count}"
    requiresDuplicateDetection          = "${var.requires_duplicate_detection}"
    duplicateDetectionHistoryTimeWindow = "${var.duplicate_detection_history_time_window}"
  }
}
