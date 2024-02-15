#Resource Group Creation
module "resource_group" {
  source      = "../../Modules/resource_group"
  rg-name     = var.rg-name
  rg-location = var.rg-location
}

#Virtual Network Creation
module "virtual_network" {
  source        = "../../Modules/virtual_network"
  vnet-name     = var.vnet-name
  address_space = var.address_space
  rg-name       = module.resource_group.rgname
  rg-location   = module.resource_group.rglocation
}

#Subnet Creation
module "subnet" {
  source           = "../../Modules/subnet"
  snet-name        = var.snet-name
  address_prefixes = var.address_prefixes
  rg-name          = module.resource_group.rgname
  vnet-name        = module.virtual_network.vnetname
}