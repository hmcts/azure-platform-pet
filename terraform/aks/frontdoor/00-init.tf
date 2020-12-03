terraform {
  required_version = ">= 0.13.0"

  backend "azurerm" {
    subscription_id = "04d27a32-7a07-48b3-95b8-3c8691e1a263"
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # https://github.com/terraform-providers/terraform-provider-azurerm/issues/8208
      version = "2.23.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}
provider "azurerm" {
  features {}
  alias           = loganalytics
  subscription_id = "8999dec3-0104-4a27-94ee-6588559729d1"
}