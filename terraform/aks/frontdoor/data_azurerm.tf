data "azurerm_subscription" "current" {}
data "azurerm_client_config" "current" {}
data "azuread_group" "operations_group" {
  name = "DTS Operations (env:${var.env})"
}
data "azurerm_log_analytics_workspace" "log" {
  provider            = azurerm.loganalytics
  name                = "hmcts-prod"
  resource_group_name = "oms-automation"

}