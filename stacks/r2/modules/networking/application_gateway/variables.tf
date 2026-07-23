variable "resource_group_name" { type = string }
variable "name" { type = string }
variable "subnet_id" { type = string }
variable "sku_name" { type = string }
variable "sku_tier" { type = string }
variable "capacity" { type = number }
variable "tags" {
  type        = map(string)
  description = "CAF-style resource tags."
}
