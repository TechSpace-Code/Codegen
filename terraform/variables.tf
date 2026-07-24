variable "subscription_id" { type = string }

variable "r0_resource_group_name" { type = string }

variable "r0_location" { type = string }

variable "r0_vnet_name" { type = string }

variable "r0_address_space" {
  type = list(string)
}

variable "r0_subnets" {
  type = list(object({
    name   = string
    prefix = string
  }))
}

variable "r0_compliance_framework" { type = string }

variable "r0_network_segmentation" { type = string }

variable "r0_application" { type = string }
variable "r0_environment" { type = string }
variable "r0_owner" { type = string }
variable "r0_cost_center" { type = string }
variable "r0_business_unit" { type = string }
variable "r0_data_classification" { type = string }
variable "r0_criticality" { type = string }

variable "r1_resource_group_name" { type = string }

variable "r1_vpn_gw_name" { type = string }

variable "r1_vpn_gw_subnet_id" { type = string }

variable "r1_vpn_gw_vpn_type" { type = string }

variable "r1_vpn_gw_sku" { type = string }

variable "r1_vpn_gw_generation" { type = string }

variable "r1_compliance_framework" { type = string }

variable "r1_network_segmentation" { type = string }

variable "r1_application" { type = string }
variable "r1_environment" { type = string }
variable "r1_owner" { type = string }
variable "r1_cost_center" { type = string }
variable "r1_business_unit" { type = string }
variable "r1_data_classification" { type = string }
variable "r1_criticality" { type = string }

variable "r2_resource_group_name" { type = string }

variable "r2_lb_name" { type = string }

variable "r2_lb_sku" { type = string }

variable "r2_compliance_framework" { type = string }

variable "r2_network_segmentation" { type = string }

variable "r2_application" { type = string }
variable "r2_environment" { type = string }
variable "r2_owner" { type = string }
variable "r2_cost_center" { type = string }
variable "r2_business_unit" { type = string }
variable "r2_data_classification" { type = string }
variable "r2_criticality" { type = string }

variable "r3_resource_group_name" { type = string }

variable "r3_fw_name" { type = string }

variable "r3_fw_subnet_id" { type = string }

variable "r3_fw_sku_name" { type = string }

variable "r3_fw_sku_tier" { type = string }

variable "r3_fw_zone_ids" { type = list(string) }

variable "r3_compliance_framework" { type = string }

variable "r3_network_segmentation" { type = string }

variable "r3_application" { type = string }
variable "r3_environment" { type = string }
variable "r3_owner" { type = string }
variable "r3_cost_center" { type = string }
variable "r3_business_unit" { type = string }
variable "r3_data_classification" { type = string }
variable "r3_criticality" { type = string }

variable "r4_resource_group_name" { type = string }

variable "r4_storage_account_name" { type = string }

variable "r4_account_tier" { type = string }

variable "r4_account_replication_type" { type = string }

variable "r4_account_kind" { type = string }

variable "r4_access_tier" { type = string }

variable "r4_min_tls_version" { type = string }

variable "r4_https_traffic_only" { type = bool }

variable "r4_allow_nested_items_to_be_public" { type = bool }

variable "r4_public_network_access_enabled" { type = bool }

variable "r4_pe_enabled" { type = bool }

variable "r4_pe_subnet_id" { type = string }

variable "r4_pe_subresource" { type = string }

variable "r4_pe_dns_zone_id" { type = string }

variable "r4_compliance_framework" { type = string }

variable "r4_network_segmentation" { type = string }

variable "r4_application" { type = string }
variable "r4_environment" { type = string }
variable "r4_owner" { type = string }
variable "r4_cost_center" { type = string }
variable "r4_business_unit" { type = string }
variable "r4_data_classification" { type = string }
variable "r4_criticality" { type = string }

variable "r5_resource_group_name" {
  type = string
}

variable "r5_location" {
  type = string
}

variable "r5_compliance_framework" { type = string }

variable "r5_network_segmentation" { type = string }

variable "r5_application" { type = string }
variable "r5_environment" { type = string }
variable "r5_owner" { type = string }
variable "r5_cost_center" { type = string }
variable "r5_business_unit" { type = string }
variable "r5_data_classification" { type = string }
variable "r5_criticality" { type = string }

variable "r6_resource_group_name" { type = string }

variable "r6_aks_cluster_name" { type = string }

variable "r6_aks_dns_prefix" { type = string }

variable "r6_aks_node_count" { type = number }

variable "r6_aks_vm_size" { type = string }

variable "r6_compliance_framework" { type = string }

variable "r6_network_segmentation" { type = string }

variable "r6_application" { type = string }
variable "r6_environment" { type = string }
variable "r6_owner" { type = string }
variable "r6_cost_center" { type = string }
variable "r6_business_unit" { type = string }
variable "r6_data_classification" { type = string }
variable "r6_criticality" { type = string }

variable "r7_resource_group_name" {
  type        = string
  description = "Resource group for VM and related resources."
}

variable "r7_location" {
  type        = string
  description = "Azure region."
}

variable "r7_vm_name" {
  type        = string
  description = "Name of the virtual machine."
}

variable "r7_vm_size" {
  type        = string
  description = "Azure VM SKU."
}

variable "r7_admin_username" {
  type        = string
  description = "Local administrator username."
}

variable "r7_key_vault_name" {
  type        = string
  description = "Existing Key Vault where this module's auto-generated secret is stored."
}

variable "r7_key_vault_resource_group_name" {
  type        = string
  description = "Resource group of the Key Vault referenced by key_vault_name."
}

variable "r7_ssh_public_key" {
  type        = string
  description = "SSH public key for Linux authentication when using SSH."
  default     = null
}

variable "r7_application" {
  type = string
}

variable "r7_environment" {
  type = string
}

variable "r7_owner" {
  type = string
}

variable "r7_cost_center" {
  type = string
}

variable "r7_business_unit" {
  type = string
}

variable "r7_data_classification" {
  type = string
}

variable "r7_criticality" {
  type = string
}

variable "r7_compliance_framework" {
  type = string
}

variable "r7_network_segmentation" {
  type = string
}

variable "r7_application" { type = string }
variable "r7_environment" { type = string }
variable "r7_owner" { type = string }
variable "r7_cost_center" { type = string }
variable "r7_business_unit" { type = string }
variable "r7_data_classification" { type = string }
variable "r7_criticality" { type = string }
