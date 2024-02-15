variable "vnet-name" {
    type = string
}

variable "address_space" {
  type = list(string)
}

variable "rg-name"{
  type = string
}
variable "rg-location" {
  type = string
}