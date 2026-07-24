output "r0_virtual_network_id" {
  value = module.r0_workload.virtual_network_id
}

output "r0_resource_group_id" {
  value = module.r0_workload.resource_group_id
}

output "r0_subnet_ids" {
  value = module.r0_workload.subnet_ids
}

output "r1_vpn_gateway_id" { value = module.r1_workload.id }


output "r2_load_balancer_id" { value = module.r2_workload.id }


output "r3_firewall_id" { value = module.r3_workload.id }


output "r4_storage_account_id" {
  value = module.r4_workload.id
}
output "r4_primary_blob_endpoint" {
  value = module.r4_workload.primary_blob_endpoint
}
output "r4_private_endpoint_id" {
  value = module.r4_workload.private_endpoint_id
}

output "r5_resource_group_id" {
  value = module.r5_workload.id
}

output "r5_resource_group_name" {
  value = module.r5_workload.name
}

output "r6_aks_id" { value = module.r6_workload.id }


output "r7_resource_group_name" {
  value = module.r7_workload.resource_group_name
}

output "r7_vm_id" {
  value = module.r7_workload.vm_id
}

output "r7_vm_principal_id" {
  value = module.r7_workload.vm_principal_id
}

output "r7_private_ip_address" {
  value = module.r7_workload.private_ip_address
}

output "r7_admin_password_key_vault_secret_id" {
  value = module.r7_workload.admin_password_key_vault_secret_id
}
