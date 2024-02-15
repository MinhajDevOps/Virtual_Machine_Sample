locals{
  my_prefix = "Avengers"
  tags = {
    environment ="Development",
    managed_by = "Minhaj"
  }
}

resource "azurerm_resource_group" "rg-sampleblock" {
  name = "${local.my_prefix}-${var.rg-name}"
  location = var.rg-location

  tags= local.tags
}


output "rgname" {
  value = resource.azurerm_resource_group.rg-sampleblock.name
}

output "rglocation"{
  value = resource.azurerm_resource_group.rg-sampleblock.location
}