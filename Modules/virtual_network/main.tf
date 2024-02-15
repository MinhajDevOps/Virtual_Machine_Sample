locals{
  my_prefix = "Avengers"
  tags = {
    environment ="Development",
    managed_by = "Terraform"
  }
}
resource "azurerm_virtual_network" "vnet-sampleblock" {
    name                = "${local.my_prefix}-${var.vnet-name}"
    location            = var.rg-location
    resource_group_name = var.rg-name
    address_space       = var.address_space

    tags = local.tags
}

output "vnetname" {
  value = resource.azurerm_virtual_network.vnet-sampleblock.name
}