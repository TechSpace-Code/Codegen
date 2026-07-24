output "resource_group_id" {
  value = azurerm_resource_group.this.id
}

output "virtual_network_id" {
  value = azurerm_virtual_network.this.id
}

output "virtual_network_name" {
  value = azurerm_virtual_network.this.name
}

output "subnet_ids" {
  value = { for k, sn in azurerm_subnet.this : k => sn.id }
}
