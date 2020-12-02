data "azurerm_subscription" "current" {}
data "azurerm_client_config" "current" {}
data "azuread_group" "operations_group" {
  name = "DTS Operations (env:${var.env})"
}
