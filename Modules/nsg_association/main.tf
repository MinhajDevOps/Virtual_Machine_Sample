resource "azurerm_subnet_network_security_group_association" "nsg-sample-association" {
  subnet_id                 = var.subnet-id
  network_security_group_id = var.nsg-id
}