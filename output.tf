# name of the queue
output "name" {
  value = "${join("", formatlist("%s", azurerm_template_deployment.queue.*.outputs["queueName"]))}"
}

# primary connection string for send operations
output "primary_send_connection_string" {
  value = "${join("", formatlist("%s", azurerm_template_deployment.queue.*.outputs["primarySendConnectionString"]))}"
}

# secondary connection string for send operations
output "secondary_send_connection_string" {
  value = "${join("", formatlist("%s", azurerm_template_deployment.queue.*.outputs["secondarySendConnectionString"]))}"
}

# primary shared access key with send rights
output "primary_send_shared_access_key" {
  value = "${join("", formatlist("%s", azurerm_template_deployment.queue.*.outputs["primarySendSharedAccessKey"]))}"
}

# secondary shared access key with send rights
output "secondary_send_shared_access_key" {
  value = "${join("", formatlist("%s", azurerm_template_deployment.queue.*.outputs["secondarySendSharedAccessKey"]))}"
}

# primary connection string for listen operations
output "primary_listen_connection_string" {
  value = "${join("", formatlist("%s", azurerm_template_deployment.queue.*.outputs["primaryListenConnectionString"]))}"
}

# secondary connection string for listen operations
output "secondary_listen_connection_string" {
  value = "${join("", formatlist("%s", azurerm_template_deployment.queue.*.outputs["secondaryListenConnectionString"]))}"
}

# primary shared access key with listen rights
output "primary_listen_shared_access_key" {
  value = "${join("", formatlist("%s", azurerm_template_deployment.queue.*.outputs["primaryListenSharedAccessKey"]))}"
}

# secondary shared access key with listen rights
output "secondary_listen_shared_access_key" {
  value = "${join("", formatlist("%s", azurerm_template_deployment.queue.*.outputs["secondaryListenSharedAccessKey"]))}"
}
