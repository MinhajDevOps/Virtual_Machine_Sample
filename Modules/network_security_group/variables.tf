variable "nsg-name" {
    type = string
}

variable "rg-name" {
  type = string
}

variable "location" {
  type = string
}

variable "security_rules" {
  type = map(object({
    name = string
    priority = number
    direction= string
    access = string
    protocol = string
    source_port_range =string
    destination_port_range = string
    source_address_prefix = string
    destination_address_prefix = string
  }))
}
