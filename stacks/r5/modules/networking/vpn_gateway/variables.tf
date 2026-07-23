variable "resource_group_name" { type = string }
variable "name" { type = string }
variable "gateway_subnet_id" { type = string }
variable "vpn_type" { type = string }
variable "sku" { type = string }
variable "generation" { type = string }
variable "tags" {
  type        = map(string)
  description = "CAF-style resource tags."
}
