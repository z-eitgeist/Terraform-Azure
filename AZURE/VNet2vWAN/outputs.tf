# Virtual hub ID
output "id" {
  value = data.azurerm_virtual_hub.hub.id
}

# Virtual network ID
output "virtual_network_id" {
  value = data.azurerm_virtual_network.vnet.id
}