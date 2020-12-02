resource "azurerm_role_assignment" "example" {
  scope                = "/subscriptions/8999dec3-0104-4a27-94ee-6588559729d1/resourcegroups/oms-automation/providers/microsoft.operationalinsights/workspaces/hmcts-prod"
  role_definition_name = "Contributor"
  principal_id         = data.azuread_group.operations_group.object_id

}

