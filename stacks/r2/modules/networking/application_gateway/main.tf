data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_public_ip" "agw" {
  name                = "${var.name}-pip"
  location            = data.azurerm_resource_group.this.location
  resource_group_name = data.azurerm_resource_group.this.name
  allocation_method   = "Static"
  sku                 = "Standard"
  tags                = var.tags
}

resource "azurerm_application_gateway" "this" {
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = data.azurerm_resource_group.this.location

  sku {
    name     = var.sku_name
    tier     = var.sku_tier
    capacity = var.capacity
  }

  gateway_ip_configuration {
    name      = "gw-ip"
    subnet_id = var.subnet_id
  }

  frontend_port {
    name = "http"
    port = 80
  }

  frontend_ip_configuration {
    name                 = "fe"
    public_ip_address_id = azurerm_public_ip.agw.id
  }

  backend_address_pool {
    name = "default"
  }

  backend_http_settings {
    name                  = "http"
    cookie_based_affinity = "Disabled"
    port                  = 80
    protocol              = "Http"
    request_timeout       = 20
  }

  http_listener {
    name                           = "listener"
    frontend_ip_configuration_name = "fe"
    frontend_port_name             = "http"
    protocol                       = "Http"
  }

  request_routing_rule {
    name                       = "rule1"
    priority                   = 100
    rule_type                  = "Basic"
    http_listener_name         = "listener"
    backend_address_pool_name  = "default"
    backend_http_settings_name = "http"
  }

  tags = var.tags
}
