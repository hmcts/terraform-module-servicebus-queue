variable "name" {
  type        = string
  description = "Azure Service Bus queue name"
}

variable "namespace_name" {
  type        = string
  description = "Azure Service Bus namespace"
}

variable "namespace_id" {
  type        = string
  default     = null
  description = "Azure Service Bus namespace resource ID. When use_namespace_id is true, used directly for queue namespace_id."
}

variable "use_namespace_id" {
  type        = bool
  default     = false
  description = "When true, use namespace_id for the queue resource instead of namespace_name (required when namespace_id is passed)."
}

variable "resource_group_name" {
  type        = string
  description = "Resource group in which the Service Bus queue should exist"
}

variable "max_delivery_count" {
  type        = string
  description = "Maximum number of attempts to deliver a message before it's sent to dead letter queue"
  default     = "10"
}

variable "lock_duration" {
  type        = string
  description = "Message lock duration (ISO-8601)"
  default     = "PT1M"
}

variable "requires_duplicate_detection" {
  type        = string
  description = "Specifies whether the queue should detect duplicate messages (true/false)"
  default     = "false"
}

variable "duplicate_detection_history_time_window" {
  type        = string
  description = "Time window for duplicate detection history (ISO-8601)"
  default     = "PT10M"
}

variable "requires_session" {
  type        = bool
  description = "A value that indicates whether the queue requires sessions"
  default     = false
}

variable "max_message_size_in_kilobytes" {
  type        = string
  description = "Integer value which controls the maximum size of a message allowed on the queue for Premium SKU"
  default     = null
}
