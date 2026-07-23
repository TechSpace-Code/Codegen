module "r0_workload" {
source = "./stacks/r0/modules/compute/linux_web_app"

  resource_group_name              = var.r0_resource_group_name
  app_name                         = var.r0_app_name
  service_plan_sku                 = var.r0_service_plan_sku
  runtime_stack                    = var.r0_runtime_stack
  https_only                       = var.r0_https_only
  enable_system_assigned_identity  = var.r0_enable_system_assigned_identity
  vnet_route_all_enabled           = var.r0_vnet_route_all_enabled
  pe_enabled                       = var.r0_pe_enabled
  pe_subnet_id                     = var.r0_pe_subnet_id
  pe_dns_zone_id                   = var.r0_pe_dns_zone_id
  tags                             = local.common_tags_r0
}
module "r1_workload" {
source = "./stacks/r1/modules/containers/aks"
  resource_group_name = var.r1_resource_group_name
  cluster_name        = var.r1_aks_cluster_name
  dns_prefix          = var.r1_aks_dns_prefix
  node_count          = var.r1_aks_node_count
  vm_size             = var.r1_aks_vm_size
  tags                = local.common_tags_r1
}
module "r2_workload" {
source = "./stacks/r2/modules/networking/application_gateway"
  resource_group_name = var.r2_resource_group_name
  name                = var.r2_agw_name
  subnet_id           = var.r2_agw_subnet_id
  sku_name            = var.r2_agw_sku_name
  sku_tier            = var.r2_agw_sku_tier
  capacity            = var.r2_agw_capacity
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
source = "./stacks/r4/modules/networking/load_balancer"
  resource_group_name = var.r4_resource_group_name
  name                = var.r4_lb_name
  sku                 = var.r4_lb_sku
  tags                = local.common_tags_r4
}
module "r5_workload" {
source = "./stacks/r5/modules/networking/vpn_gateway"
  resource_group_name = var.r5_resource_group_name
  name                = var.r5_vpn_gw_name
  gateway_subnet_id   = var.r5_vpn_gw_subnet_id
  vpn_type            = var.r5_vpn_gw_vpn_type
  sku                 = var.r5_vpn_gw_sku
  generation          = var.r5_vpn_gw_generation
  tags                = local.common_tags_r5
}
