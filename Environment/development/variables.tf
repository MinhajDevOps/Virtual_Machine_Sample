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

