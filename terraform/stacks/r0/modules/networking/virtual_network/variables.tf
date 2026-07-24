variable "resource_group_name" { type = string }
variable "location" { type = string }
variable "vnet_name" { type = string }
variable "address_space" {
  type = list(string)
}

variable "subnets" {
  type = list(object({
    name   = string
    prefix = string
  }))
  description = "Subnets to create inside the virtual network (empty list = VNet only)."
}

variable "tags" {
  type        = map(string)
  description = "CAF-style resource tags."
}
