variable "resource_group_name" { type = string }
variable "app_name" { type = string }
variable "service_plan_sku" { type = string }
variable "https_only" { type = bool }
variable "enable_system_assigned_identity" { type = bool }
variable "vnet_route_all_enabled" { type = bool }
variable "runtime_stack" { type = string }
variable "pe_enabled" {
  type        = bool
  default     = false
  description = "Create a private endpoint (subresource: sites) for inbound private access."
}
variable "pe_subnet_id" {
  type        = string
  default     = ""
  description = "Subnet resource ID for the private endpoint NIC. Required when pe_enabled = true."
}
variable "pe_dns_zone_id" {
  type        = string
  default     = ""
  description = "Private DNS zone resource ID for automatic DNS registration."
}
variable "tags" {
  type        = map(string)
  description = "CAF-style resource tags."
}
