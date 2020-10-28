variable "resource_group_name" {
    type = string
    description = "The name of an existing resource group"
    default = "demo"
}

variable "name" {
    type = string
    description = "The name to use for resources"
    default = "example"
}

variable "address_space" {
    type = list(string)
    description = "The address CIDR to use for the VNET"
    default = ["10.0.0.0/16"]
}

variable "subnet_prefix" {
    type = list(string)
    description = "The address prefix for the subnet"
    default = ["10.0.1.0/24"]
}