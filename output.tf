# name of the queue
output "name" {
  value = azurerm_servicebus_queue.servicebus_queue.name
}

# primary connection string for send operations
output "primary_send_connection_string" {
  value = azurerm_servicebus_queue_authorization_rule.send_auth_rule.primary_connection_string
}

# secondary connection string for send operations
output "secondary_send_connection_string" {
  value = azurerm_servicebus_queue_authorization_rule.send_auth_rule.secondary_connection_string
}

# Primary shared access key with send rights
output "primary_send_shared_access_key" {
  value = azurerm_servicebus_queue_authorization_rule.send_auth_rule.primary_key
}

# Secondary shared access key with send rights
output "secondary_send_shared_access_key" {
  value = azurerm_servicebus_queue_authorization_rule.send_auth_rule.secondary_key
}

# Primary connection string for listen operations
output "primary_listen_connection_string" {
  value = azurerm_servicebus_queue_authorization_rule.listen_auth_rule.primary_connection_string
}

# Secondary connection string for listen operations
output "secondary_listen_connection_string" {
  value = azurerm_servicebus_queue_authorization_rule.listen_auth_rule.secondary_connection_string
}

# Primary shared access key with listen rights
output "primary_listen_shared_access_key" {
  value = azurerm_servicebus_queue_authorization_rule.listen_auth_rule.primary_key
}

# Secondary shared access key with listen rights
output "secondary_listen_shared_access_key" {
  value = azurerm_servicebus_queue_authorization_rule.listen_auth_rule.secondary_key
}