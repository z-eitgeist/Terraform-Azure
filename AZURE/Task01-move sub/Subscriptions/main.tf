data "azurerm_management_group" "Customers" {
  name = "Customers"
}

data "azurerm_subscription" "Azure subscription 2" {
  subscription_id = "06380e72-48b9-4274-8122-3ff5db81a6b4"
}

resource "azurerm_management_group_subscription_association" "Foo" {
  management_group_id = data.azurerm_management_group.Foo.id
  subscription_id     = data.azurerm_subscription.Foo.id
}


data "azurerm_management_group" "Customers" {
  name = "Customers"
}

data "azurerm_subscription" "Azure subscription 1" {
  subscription_id = "e3058e18-0c77-4948-b249-96289ef6ee91"
}

resource "azurerm_management_group_subscription_association" "Bar" {
  management_group_id = data.azurerm_management_group.Bar.id
  subscription_id     = data.azurerm_subscription.Bar.id
}