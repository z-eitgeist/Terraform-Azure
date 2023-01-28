output "management_group_name" {
  value = data.azurerm_management_group.management_group.name
}

output "subscription_id" {
  value = data.azurerm_subscription.subscription_id.id
}



