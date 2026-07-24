output "resource_group_name" {
  value = azurerm_resource_group.this.name
}

output "vm_id" {
  value = azurerm_windows_virtual_machine.this.id
}

output "vm_principal_id" {
  value = try(azurerm_windows_virtual_machine.this.identity[0].principal_id, null)
}

output "private_ip_address" {
  value = azurerm_network_interface.this.private_ip_address
}

output "admin_password_key_vault_secret_id" {
  description = "Key Vault secret resource ID for the generated password (retrieve the value with az keyvault secret show, not from Terraform state)."
  value       = azurerm_key_vault_secret.vm_admin.id
}
