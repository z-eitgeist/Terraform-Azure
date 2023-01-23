output "resource_group_name" {
    value = azurerm_resource_group.Foo.name
}

output "resource_group_name" {
    value = azurerm_resource_group.Bar.name
}

output "azure_virtual_netwotk" {
    value = azurerm_virtual_network.VNet_Foo.name
}

output "azure_virtual_netwotk" {
    value = azurerm_virtual_network.VNet_Bar.name
}