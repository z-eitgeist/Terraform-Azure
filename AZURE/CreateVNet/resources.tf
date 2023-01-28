# Create resource group
resource "azurerm_resource_group" "VNet_resource_group" {
  name     = var.VNet_resource_group_name
  location = var.VNet_resource_group_location
}

# Create VNet
resource "azurerm_virtual_network" "VNet" {
  name                = var.VNet_name
  location            = azurerm_resource_group.VNet_resource_group.location
  resource_group_name = azurerm_resource_group.VNet_resource_group.name
  address_space       = var.address_space

}
 
