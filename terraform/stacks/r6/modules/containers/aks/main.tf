data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_kubernetes_cluster" "this" {
  name                = var.cluster_name
  location            = data.azurerm_resource_group.this.location
  resource_group_name = data.azurerm_resource_group.this.name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}
