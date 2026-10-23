locals {
  sender_managed_identity_object_id   = var.sender_managed_identity_object_id != null ? var.sender_managed_identity_object_id : var.managed_identity_object_id
  receiver_managed_identity_object_id = var.receiver_managed_identity_object_id != null ? var.receiver_managed_identity_object_id : var.managed_identity_object_id
}
