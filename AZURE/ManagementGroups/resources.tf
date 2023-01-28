# Retrieve ID for management group "Customers" 
data "azurerm_management_group" "Customers" {
  name = var.parent_group_name
}

# Create a new management group under parent group "Customers"
resource "azurerm_management_group" "Amna_test_1" {
  display_name = var.new_group_display_name
  name = var.new_group_name
  parent_management_group_id = data.azurerm_management_group.Customers.id
}

data "azurerm_subscriptions" "Customers" {
}