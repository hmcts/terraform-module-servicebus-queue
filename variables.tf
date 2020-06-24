variable "name" {
  type = "string"
  description = "Azure Service Bus queue name"
}

variable "namespace_name" {
  type = "string"
  description = "Azure Service Bus namespace"
}

variable "resource_group_name" {
  type = "string"
  description = "Resource group in which the Service Bus queue should exist"
}

variable "max_delivery_count" {
  type = "string"
  description = "Maximum number of attempts to deliver a message before it's sent to dead letter queue"
  default = "10"
}

variable "lock_duration" {
  type = "string"
  description = "Message lock duration (ISO-8601)"
  default = "PT1M"
}

variable "requires_duplicate_detection" {
  type = "string"
  description = "Specifies whether the queue should detect duplicate messages (true/false)"
  default = "false"
}

variable "duplicate_detection_history_time_window" {
  type = "string"
  description = "Time window for duplicate detection history (ISO-8601)"
  default = "PT10M"
}

variable "count" {
  description = "The number of queues that should be created. This var is added as support for optional creation"
  default = 1
}