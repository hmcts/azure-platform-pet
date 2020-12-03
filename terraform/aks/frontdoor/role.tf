resource "azurerm_role_assignment" "role" {
  provider             = azurerm.loganalytics
  scope                = data.azurerm_log_analytics_workspace.log.id
  role_definition_name = "Log Analytics Contributor"
  principal_id         = data.azuread_group.operations_group.object_id

}
