# Retrieve virtual hub ID
data "azurerm_virtual_hub" "hub" {
  name = var.virtual_hub_name
  resource_group_name = var.virtual_hub_resourse_group
  provider = azurerm.azure_sub
}

# Retrieve ID of virtual network you want to connect to virtual hub
data "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  resource_group_name = var.virtual_network_resourse_group
}

# Create connection between virtual hub and virtual network
resource "azurerm_virtual_hub_connection" "VNet2vWAN" {
  name                      = var.connection_name
  virtual_hub_id            = data.azurerm_virtual_hub.hub.id #hub ID
  remote_virtual_network_id = data.azurerm_virtual_network.vnet.id #Virtual network ID
}
