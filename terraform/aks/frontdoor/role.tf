data "azurerm_client_config" "current" {
  provider = azurerm.loganalytics
}

resource "azurerm_role_assignment" "role" {
  provider             = azurerm.loganalytics
  scope                = data.azurerm_client_config.current.id
  role_definition_name = "Log Analytics Contributor"
  principal_id         = data.azuread_group.operations_group.object_id

}
