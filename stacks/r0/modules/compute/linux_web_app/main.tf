data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_service_plan" "this" {
  name                = "${var.app_name}-asp"
  resource_group_name = data.azurerm_resource_group.this.name
  location            = data.azurerm_resource_group.this.location
  os_type             = "Linux"
  sku_name            = var.service_plan_sku
  tags                = var.tags
}

resource "azurerm_linux_web_app" "this" {
  name                = var.app_name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = data.azurerm_resource_group.this.location
  service_plan_id     = azurerm_service_plan.this.id
  https_only          = var.https_only

  site_config {
    application_stack {
      node_version = "20-lts"
    }
    vnet_route_all_enabled = var.vnet_route_all_enabled
  }

  identity {
    type = var.enable_system_assigned_identity ? "SystemAssigned" : "None"
  }

  tags = var.tags
}

resource "azurerm_private_endpoint" "this" {
  count               = var.pe_enabled ? 1 : 0
  name                = "${var.app_name}-pe"
  location            = data.azurerm_resource_group.this.location
  resource_group_name = data.azurerm_resource_group.this.name
  subnet_id           = var.pe_subnet_id

  private_service_connection {
    name                           = "${var.app_name}-psc"
    private_connection_resource_id = azurerm_linux_web_app.this.id
    is_manual_connection           = false
    subresource_names              = ["sites"]
  }

  dynamic "private_dns_zone_group" {
    for_each = var.pe_dns_zone_id != "" ? [1] : []
    content {
      name                 = "default"
      private_dns_zone_ids = [var.pe_dns_zone_id]
    }
  }

  tags = var.tags
}
