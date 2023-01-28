# Retrieve ID for management group 
data "azurerm_management_group" "management_group" {
  name = var.parent_group_name
}

# Retrieve subscription ID
data "azurerm_subscription" "subscription_id" {
  subscription_id = var.subscription_id
}

# Associate Subscription ID to specified management group
resource "azurerm_management_group_subscription_association" "management_group" {
  management_group_id = data.azurerm_management_group.management_group.id
  subscription_id     = data.azurerm_subscription.subscription_id.id
}








