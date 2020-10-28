provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "example" {
  name = var.resource_group_name
}

resource "azurerm_virtual_network" "example" {
  name                = var.name
  location            = data.azurerm_resource_group.example.location
  resource_group_name = data.azurerm_resource_group.example.name
  address_space       = var.address_space
}

resource "azurerm_subnet" "example" {
  name                 = var.name
  resource_group_name  = data.azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = var.subnet_prefix
}

resource "azurerm_network_security_group" "example" {
  name                = var.name
  location            = data.azurerm_resource_group.example.location
  resource_group_name = data.azurerm_resource_group.example.name
}
