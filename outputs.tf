output "r0_web_app_id" { value = module.r0_workload.id }
output "r0_default_hostname" { value = module.r0_workload.default_hostname }
output "r0_private_endpoint_id" { value = module.r0_workload.private_endpoint_id }

output "r1_aks_id" { value = module.r1_workload.id }


output "r2_application_gateway_id" { value = module.r2_workload.id }


output "r3_firewall_id" { value = module.r3_workload.id }


output "r4_load_balancer_id" { value = module.r4_workload.id }


output "r5_vpn_gateway_id" { value = module.r5_workload.id }
