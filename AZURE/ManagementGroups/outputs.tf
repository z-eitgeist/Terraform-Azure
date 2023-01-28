output "parent_group_name" {
  value = data.azurerm_management_group.Customers.name
}

output "parent_group_id" {
  value = data.azurerm_management_group.Customers.id
}

output "all_subscription_ids" {
  value = data.azurerm_management_group.Customers.all_subscription_ids
}

output "available_subscriptions" {
  value = data.azurerm_subscriptions.Customers.subscriptions
}