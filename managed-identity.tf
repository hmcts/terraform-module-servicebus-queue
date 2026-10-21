resource "azurerm_role_assignment" "mi_role_assignment_receiver" {
  principal_id         = local.receiver_managed_identity_object_id
  role_definition_name = "Azure Service Bus Data Receiver"
  scope                = azurerm_servicebus_queue.servicebus_queue.id

  count = local.receiver_managed_identity_object_id != null ? 1 : 0
}

resource "azurerm_role_assignment" "mi_role_assignment_sender" {
  principal_id         = local.sender_managed_identity_object_id
  role_definition_name = "Azure Service Bus Data Sender"
  scope                = azurerm_servicebus_queue.servicebus_queue.id

  count = local.sender_managed_identity_object_id != null ? 1 : 0
}
