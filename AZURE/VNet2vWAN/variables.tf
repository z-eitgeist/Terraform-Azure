variable "virtual_hub_name" {
    type = string
    description = "Name of the virtual hub to retrieve ID"
}

variable "virtual_hub_resourse_group" {
    type = string
    description = "Name of the resourse group where virtual hub resides"
}

variable "virtual_network_name" {
    type = string
    description = "Name of the Virtual network you want to peer with vWAN"
}

variable "virtual_network_resourse_group" {
    type = string
    description = "Resource group of the Virtual network you want to peer with vWAN"
}

variable "connection_name" {
    type = string
    description = "Name for the connection you want to create"
}


