data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_public_ip" "fw" {
  name                = "${var.name}-pip"
  location            = data.azurerm_resource_group.this.location
  resource_group_name = data.azurerm_resource_group.this.name
  allocation_method   = "Static"
  sku                 = "Standard"
  zones               = length(var.zone_ids) > 0 ? var.zone_ids : null
  tags                = var.tags
}

resource "azurerm_firewall" "this" {
  name                = var.name
  location            = data.azurerm_resource_group.this.location
  resource_group_name = data.azurerm_resource_group.this.name
  sku_name            = var.sku_name
  sku_tier            = var.sku_tier
  zones               = length(var.zone_ids) > 0 ? var.zone_ids : null

  ip_configuration {
    name                 = "ipconf"
    subnet_id            = var.subnet_id
    public_ip_address_id = azurerm_public_ip.fw.id
  }

  tags = var.tags
}
