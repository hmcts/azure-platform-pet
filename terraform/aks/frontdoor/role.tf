data "azurerm_subscription" "log" {
  subscription_id = "8999dec3-0104-4a27-94ee-6588559729d1"
} 

resource "azurerm_role_assignment" "role" {
  scope                =  data.azurerm_subscription.log.id 
  role_definition_name = "Log Analytics Contributor"
  principal_id         = data.azuread_group.operations_group.object_id

}
