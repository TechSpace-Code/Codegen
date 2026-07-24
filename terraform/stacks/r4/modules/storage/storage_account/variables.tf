variable "resource_group_name" { type = string }

variable "storage_account_name" {
  type        = string
  description = "Globally unique: 3-24 lowercase alphanumeric."
}

variable "account_tier" { type = string }
variable "account_replication_type" { type = string }
variable "account_kind" { type = string }
variable "access_tier" { type = string }
variable "min_tls_version" { type = string }
variable "https_traffic_only" { type = bool }
variable "allow_nested_items_to_be_public" { type = bool }
variable "public_network_access_enabled" { type = bool }

variable "pe_enabled" {
  type        = bool
  default     = false
  description = "Create a private endpoint for this storage account."
}
variable "pe_subnet_id" {
  type        = string
  default     = ""
  description = "Subnet resource ID for the private endpoint NIC. Required when pe_enabled = true."
}
variable "pe_subresource" {
  type        = string
  default     = "blob"
  description = "Storage sub-resource targeted by the private endpoint (blob, file, queue, table, web, dfs)."
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
