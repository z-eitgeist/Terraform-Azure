resource "azurerm_management_group" "Foo" {
  display_name = "Foo"
  id = "Foo"
  parent_management_group_id = azurerm_management_group.Customers.id
}

resource "azurerm_management_group" "Bar" {
  display_name = "Bar"
  id = "Bar"

  parent_management_group_id = azurerm_management_group.Customers.id
}