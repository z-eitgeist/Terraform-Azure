terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.40.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "test_VNet" {
  name     = "VNet"
  location = "West Europe"
}

resource "azurerm_virtual_network" "VNet_Foo" {
  name                = "Test_Foo_VNet"
  resource_group_name = azurerm_resource_group.Foo.name
  address_space       = ["192.168.0.0/24"]
  location            = azurerm_resource_group.Foo.location
}

resource "azurerm_virtual_network" "VNet_Bar" {
  name                = "Test_Bar_VNet"
  resource_group_name = azurerm_resource_group.Bar.name
  address_space       = ["192.168.1.0/24"]
  location            = azurerm_resource_group.Bar.location
}

resource "azurerm_virtual_network_peering" "VNet_Foo" {
  name                      = "peerVNet_FootoVNetBar"
  resource_group_name       = azurerm_resource_group.test_VNet.name
  virtual_network_name      = azurerm_virtual_network.VNet_Foo.name
  remote_virtual_network_id = azurerm_virtual_network.VNet_Bar.id
}

resource "azurerm_virtual_network_peering" "VNet_Bar" {
  name                      = "peerVNetBartoVNetFoo"
  resource_group_name       = azurerm_resource_group.test_VNet.name
  virtual_network_name      = azurerm_virtual_network.VNet_Bar.name
  remote_virtual_network_id = azurerm_virtual_network.VNet_Foo.id
}