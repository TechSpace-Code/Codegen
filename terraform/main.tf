module "r0_workload" {
source = "./stacks/r0/modules/networking/virtual_network"

  resource_group_name = var.r0_resource_group_name
  location            = var.r0_location
  vnet_name           = var.r0_vnet_name
  address_space       = var.r0_address_space
  subnets             = var.r0_subnets
  tags                = local.common_tags_r0
}
module "r1_workload" {
source = "./stacks/r1/modules/networking/vpn_gateway"
  resource_group_name = var.r1_resource_group_name
  name                = var.r1_vpn_gw_name
  gateway_subnet_id   = var.r1_vpn_gw_subnet_id
  vpn_type            = var.r1_vpn_gw_vpn_type
  sku                 = var.r1_vpn_gw_sku
  generation          = var.r1_vpn_gw_generation
  tags                = local.common_tags_r1
}
module "r2_workload" {
source = "./stacks/r2/modules/networking/load_balancer"
  resource_group_name = var.r2_resource_group_name
  name                = var.r2_lb_name
  sku                 = var.r2_lb_sku
  tags                = local.common_tags_r2
}
module "r3_workload" {
source = "./stacks/r3/modules/networking/azure_firewall"
  resource_group_name = var.r3_resource_group_name
  name                = var.r3_fw_name
  subnet_id           = var.r3_fw_subnet_id
  sku_name            = var.r3_fw_sku_name
  sku_tier            = var.r3_fw_sku_tier
  zone_ids            = var.r3_fw_zone_ids
  tags                = local.common_tags_r3
}
module "r4_workload" {
source = "./stacks/r4/modules/storage/storage_account"

  resource_group_name               = var.r4_resource_group_name
  storage_account_name              = var.r4_storage_account_name
  account_tier                      = var.r4_account_tier
  account_replication_type          = var.r4_account_replication_type
  account_kind                      = var.r4_account_kind
  access_tier                       = var.r4_access_tier
  min_tls_version                   = var.r4_min_tls_version
  https_traffic_only                = var.r4_https_traffic_only
  allow_nested_items_to_be_public   = var.r4_allow_nested_items_to_be_public
  public_network_access_enabled     = var.r4_public_network_access_enabled
  pe_enabled                        = var.r4_pe_enabled
  pe_subnet_id                      = var.r4_pe_subnet_id
  pe_subresource                    = var.r4_pe_subresource
  pe_dns_zone_id                    = var.r4_pe_dns_zone_id
  tags                              = local.common_tags_r4
}
module "r5_workload" {
source = "./stacks/r5/modules/governance/resource_group"

  resource_group_name = var.r5_resource_group_name
  location            = var.r5_location
  tags                = local.common_tags_r5
}
module "r6_workload" {
source = "./stacks/r6/modules/containers/aks"
  resource_group_name = var.r6_resource_group_name
  cluster_name        = var.r6_aks_cluster_name
  dns_prefix          = var.r6_aks_dns_prefix
  node_count          = var.r6_aks_node_count
  vm_size             = var.r6_aks_vm_size
  tags                = local.common_tags_r6
}
module "r7_workload" {
  source = "./stacks/r7/workload"

  subscription_id = var.subscription_id
  resource_group_name = var.r7_resource_group_name
  location = var.r7_location
  vm_name = var.r7_vm_name
  vm_size = var.r7_vm_size
  admin_username = var.r7_admin_username
  key_vault_name = var.r7_key_vault_name
  key_vault_resource_group_name = var.r7_key_vault_resource_group_name
  ssh_public_key = var.r7_ssh_public_key
  application = var.r7_application
  environment = var.r7_environment
  owner = var.r7_owner
  cost_center = var.r7_cost_center
  business_unit = var.r7_business_unit
  data_classification = var.r7_data_classification
  criticality = var.r7_criticality
  compliance_framework = var.r7_compliance_framework
  network_segmentation = var.r7_network_segmentation
}
