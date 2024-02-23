locals {
  my_prefix = "Avengers"
}

resource "azurerm_subnet" "snet-sampleblock" {
  name                 = "${local.my_prefix}-${var.snet-name}"
  resource_group_name  = var.rg-name
  virtual_network_name = var.vnet-name
  address_prefixes     = var.address_prefixes
}

output "snetname" {
  value = resource.azurerm_subnet.snet-sampleblock.name
}

output "snetid"{
  value = resource.azurerm_subnet.snet-sampleblock.id
}