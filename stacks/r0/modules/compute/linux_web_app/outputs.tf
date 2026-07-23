output "id" { value = azurerm_linux_web_app.this.id }
output "default_hostname" { value = azurerm_linux_web_app.this.default_hostname }
output "private_endpoint_id" {
  value       = length(azurerm_private_endpoint.this) > 0 ? azurerm_private_endpoint.this[0].id : null
  description = "Private endpoint ID (null when pe_enabled = false)."
}
