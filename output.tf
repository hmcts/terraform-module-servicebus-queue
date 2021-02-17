# name of the queue
output "name" {
  value = azurerm_servicebus_queue.servicebus_queue.name
}

# primary connection string for send operations
output "primary_send_connection_string" {
  value = azurerm_servicebus_queue_authorization_rule.SendSharedAccessKey.primary_connection_string
}

# secondary connection string for send operations
output "secondary_send_connection_string" {
  value = azurerm_servicebus_queue_authorization_rule.SendSharedAccessKey.secondary_connection_string
}

# primary shared access key with send rights
output "primary_send_shared_access_key" {
  value = azurerm_servicebus_queue_authorization_rule.SendSharedAccessKey.primary_key
}

# secondary shared access key with send rights
output "secondary_send_shared_access_key" {
  value = azurerm_servicebus_queue_authorization_rule.SendSharedAccessKey.secondary_key
}

# primary connection string for listen operations
output "primary_listen_connection_string" {
  value = azurerm_servicebus_queue_authorization_rule.ListenSharedAccessKey.primary_connection_string
}

# secondary connection string for listen operations
output "secondary_listen_connection_string" {
  value = azurerm_servicebus_queue_authorization_rule.ListenSharedAccessKey.secondary_connection_string
}

# primary shared access key with listen rights
output "primary_listen_shared_access_key" {
  value = azurerm_servicebus_queue_authorization_rule.ListenSharedAccessKey.primary_key
}

# secondary shared access key with listen rights
output "secondary_listen_shared_access_key" {
  value = azurerm_servicebus_queue_authorization_rule.ListenSharedAccessKey.secondary_key
}