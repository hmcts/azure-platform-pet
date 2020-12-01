
resource "azurerm_resource_group" "dia_rg" {
  name     = "petapps-${var.env}-monitoring-rg" 
  location = var.location
  tags     = local.common_tags
}

resource "azurerm_log_analytics_workspace" "diag" {
  name                = "petapps-${var.env}-law" 
  location            = azurerm_resource_group.dia_rg.location
  resource_group_name = azurerm_resource_group.dia_rg.name
  sku                 = "Standard"
  retention_in_days   = 30
}
