module "landing_zone" {
  source = "git::https://github.com/hmcts/terraform-module-frontdoor.git?ref=master"

  providers = {
    azurerm      = azurerm
    azurerm.data = azurerm.data
  }

  common_tags                = local.common_tags
  env                        = var.env
  subscription               = var.subscription
  project                    = var.project
  location                   = var.location
  frontends                  = var.frontends
  enable_ssl                 = true
  ssl_mode                   = "AzureKeyVault" 
  resource_group             = azurerm_resource_group.fd_rg.name
  subscription_id            = data.azurerm_subscription.current.subscription_id
  certificate_key_vault_name = azurerm_key_vault.key_vault.name 
  oms_env                    = var.oms_env
  certificate_name_check     = true
  key_vault_resource_group   = azurerm_resource_group.fd_rg.name 
  log_analytics_workspace_id = "/subscriptions/8999dec3-0104-4a27-94ee-6588559729d1/resourcegroups/oms-automation/providers/microsoft.operationalinsights/workspaces/hmcts-prod" 
}
