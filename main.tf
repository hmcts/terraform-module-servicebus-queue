locals {
  send_auth_rule_name = "SendSharedAccessKey"
  listen_auth_rule_name = "ListenSharedAccessKey"
}

resource "azurerm_servicebus_queue" "servicebus_queue" {
  name                                    = var.name
  resource_group_name                     = var.resource_group_name
  namespace_name                          = var.namespace_name

  lock_duration                           = var.lock_duration
  max_delivery_count                      = var.max_delivery_count
  requires_duplicate_detection            = var.requires_duplicate_detection
  duplicate_detection_history_time_window = var.duplicate_detection_history_time_window

  max_size_in_megabytes                = 1024
  requires_session                     = false
  default_message_ttl                  = "P10675199DT2H48M5.4775807S"
  dead_lettering_on_message_expiration = true
  auto_delete_on_idle                  = "P10675199DT2H48M5.4775807S"
  enable_partitioning                  = false
  enable_express                       = false
}

resource "azurerm_servicebus_queue_authorization_rule" "send_auth_rule" {
  name                = local.send_auth_rule_name
  namespace_name      = var.namespace_name
  queue_name          = azurerm_servicebus_queue.servicebus_queue.name
  resource_group_name = var.resource_group_name

  send   = true
}

resource "azurerm_servicebus_queue_authorization_rule" "listen_auth_rule" {
  name                = local.listen_auth_rule_name
  namespace_name      = var.namespace_name
  queue_name          = azurerm_servicebus_queue.servicebus_queue.name
  resource_group_name = var.resource_group_name

  listen = true
}