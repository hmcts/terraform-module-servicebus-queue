# terraform-module-servicebus-queue

A Terraform module for creating Azure Service Bus queue
Refer to the following link for a detailed explanation of the Azure Service Bus queue.

[Azure Service Bus Queue](https://docs.microsoft.com/en-us/azure/service-bus-messaging/service-bus-queues-topics-subscriptions)

## Usage

The following example shows how to use the module to create an Azure Service Bus queue. 

```terraform
module "servicebus-queue" {
  source                = "git@github.com:hmcts/terraform-module-servicebus-queue?ref=master"
  name                  = "your-queue"
  namespace_name        = module.servicebus-namespace.name
  resource_group_name   = azurerm_resource_group.rg.name
}
```

## Variables

### Configuration

The following parameters are required by this module

- `name` the name of the ServiceBus namespace.
- `resource_group_name` the name of the resource group in which to create the ServiceBus namespace.
- `namespace_name` the name of the service bus namespace in which the queue must be created.

### Output

The following variables are provided by the module for use in other modules

- `name` the name of the service bus queue.
- `primary_send_and_listen_connection_string` the Primary Connection String for the ServiceBus Queue send authorization Rule.
- `secondary_send_and_listen_connection_string` the Secondary Connection String for the ServiceBus Queue send authorization Rule.
- `primary_send_and_listen_shared_access_key` the Primary Key for the ServiceBus Queue send authorization Rule.
- `secondary_send_and_listen_shared_access_key` the Secondary Key for the ServiceBus Queue send authorization Rule.
- `primary_listen_connection_string` the Primary Connection String for the ServiceBus Queue listen authorization Rule.
- `secondary_listen_connection_string` the Secondary Connection String for the ServiceBus Queue listen authorization Rule.
- `primary_listen_shared_access_key` the Primary Key for the ServiceBus Queue listen authorization Rule.
- `secondary_listen_shared_access_key` the Secondary Key for the ServiceBus Queue listen authorization Rule.

<!-- BEGIN_TF_DOCS -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_duplicate_detection_history_time_window"></a> [duplicate\_detection\_history\_time\_window](#input\_duplicate\_detection\_history\_time\_window) | Time window for duplicate detection history (ISO-8601) | `string` | `"PT10M"` | no |
| <a name="input_lock_duration"></a> [lock\_duration](#input\_lock\_duration) | Message lock duration (ISO-8601) | `string` | `"PT1M"` | no |
| <a name="input_max_delivery_count"></a> [max\_delivery\_count](#input\_max\_delivery\_count) | Maximum number of attempts to deliver a message before it's sent to dead letter queue | `string` | `"10"` | no |
| <a name="input_max_message_size_in_kilobytes"></a> [max\_message\_size\_in\_kilobytes](#input\_max\_message\_size\_in\_kilobytes) | Integer value which controls the maximum size of a message allowed on the queue for Premium SKU | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Azure Service Bus queue name | `string` | n/a | yes |
| <a name="input_namespace_id"></a> [namespace\_id](#input\_namespace\_id) | Azure Service Bus namespace resource ID. When use\_namespace\_id is true, used directly for queue namespace\_id. | `string` | `null` | no |
| <a name="input_namespace_name"></a> [namespace\_name](#input\_namespace\_name) | Azure Service Bus namespace | `string` | n/a | yes |
| <a name="input_requires_duplicate_detection"></a> [requires\_duplicate\_detection](#input\_requires\_duplicate\_detection) | Specifies whether the queue should detect duplicate messages (true/false) | `string` | `"false"` | no |
| <a name="input_requires_session"></a> [requires\_session](#input\_requires\_session) | A value that indicates whether the queue requires sessions | `bool` | `false` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Resource group in which the Service Bus queue should exist | `string` | n/a | yes |
| <a name="input_use_namespace_id"></a> [use\_namespace\_id](#input\_use\_namespace\_id) | When true, use namespace\_id for the queue resource instead of namespace\_name (required when namespace\_id is passed). | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | name of the queue |
| <a name="output_primary_listen_connection_string"></a> [primary\_listen\_connection\_string](#output\_primary\_listen\_connection\_string) | Primary connection string for listen operations |
| <a name="output_primary_listen_shared_access_key"></a> [primary\_listen\_shared\_access\_key](#output\_primary\_listen\_shared\_access\_key) | Primary shared access key with listen rights |
| <a name="output_primary_send_connection_string"></a> [primary\_send\_connection\_string](#output\_primary\_send\_connection\_string) | primary connection string for send operations |
| <a name="output_primary_send_shared_access_key"></a> [primary\_send\_shared\_access\_key](#output\_primary\_send\_shared\_access\_key) | Primary shared access key with send rights |
| <a name="output_queue_id"></a> [queue\_id](#output\_queue\_id) | Azure resource ID of the queue |
| <a name="output_secondary_listen_connection_string"></a> [secondary\_listen\_connection\_string](#output\_secondary\_listen\_connection\_string) | Secondary connection string for listen operations |
| <a name="output_secondary_listen_shared_access_key"></a> [secondary\_listen\_shared\_access\_key](#output\_secondary\_listen\_shared\_access\_key) | Secondary shared access key with listen rights |
| <a name="output_secondary_send_connection_string"></a> [secondary\_send\_connection\_string](#output\_secondary\_send\_connection\_string) | secondary connection string for send operations |
| <a name="output_secondary_send_shared_access_key"></a> [secondary\_send\_shared\_access\_key](#output\_secondary\_send\_shared\_access\_key) | Secondary shared access key with send rights |
<!-- END_TF_DOCS -->