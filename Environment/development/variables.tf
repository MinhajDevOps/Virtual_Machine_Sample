#Resource Group Variables
variable "rg-name" {
  type = string

}
variable "rg-location" {
  type = string
}

#Virtual Network Variables
variable "vnet-name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

#Subnet Variables
variable "snet-name" {
  type = string
}

variable "address_prefixes" {
  type = list(string)
}

#Network Security Group Variables
variable "nsg-name" {
  type = string
}

variable "security_rules" {
  type = map(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}

#Network Security Group / Subnet Association
# variable "subnet-id" {
#   type = string
# }

# variable "nsg-id" {
#   type = string
# }
