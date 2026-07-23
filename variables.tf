variable "subscription_id" { type = string }

variable "r0_resource_group_name" { type = string }

variable "r0_app_name" { type = string }

variable "r0_service_plan_sku" { type = string }

variable "r0_runtime_stack" { type = string }

variable "r0_https_only" { type = bool }

variable "r0_enable_system_assigned_identity" { type = bool }

variable "r0_vnet_route_all_enabled" { type = bool }

variable "r0_pe_enabled" { type = bool }

variable "r0_pe_subnet_id" { type = string }

variable "r0_pe_dns_zone_id" { type = string }

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

variable "r1_aks_cluster_name" { type = string }

variable "r1_aks_dns_prefix" { type = string }

variable "r1_aks_node_count" { type = number }

variable "r1_aks_vm_size" { type = string }

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

variable "r2_agw_name" { type = string }

variable "r2_agw_subnet_id" { type = string }

variable "r2_agw_sku_name" { type = string }

variable "r2_agw_sku_tier" { type = string }

variable "r2_agw_capacity" { type = number }

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

variable "r4_lb_name" { type = string }

variable "r4_lb_sku" { type = string }

variable "r4_compliance_framework" { type = string }

variable "r4_network_segmentation" { type = string }

variable "r4_application" { type = string }
variable "r4_environment" { type = string }
variable "r4_owner" { type = string }
variable "r4_cost_center" { type = string }
variable "r4_business_unit" { type = string }
variable "r4_data_classification" { type = string }
variable "r4_criticality" { type = string }

variable "r5_resource_group_name" { type = string }

variable "r5_vpn_gw_name" { type = string }

variable "r5_vpn_gw_subnet_id" { type = string }

variable "r5_vpn_gw_vpn_type" { type = string }

variable "r5_vpn_gw_sku" { type = string }

variable "r5_vpn_gw_generation" { type = string }

variable "r5_compliance_framework" { type = string }

variable "r5_network_segmentation" { type = string }

variable "r5_application" { type = string }
variable "r5_environment" { type = string }
variable "r5_owner" { type = string }
variable "r5_cost_center" { type = string }
variable "r5_business_unit" { type = string }
variable "r5_data_classification" { type = string }
variable "r5_criticality" { type = string }
