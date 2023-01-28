variable "VNet_resource_group_name" {
    type = string
    description = "Name of the VNet Resource Group"
}

variable "VNet_resource_group_location" {
    type = string
    description = "Location for the VNet Resource Group"
}

variable "VNet_name" {
    type = string
    description = "Name of the Virtual Network"
}

variable "address_space" {
    type = list
    description = "Address space for the VNet"
}

variable "subscription_id" {
    type = string
    description = "Subscription ID: "
}