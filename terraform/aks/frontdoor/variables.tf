variable "env" {
  description = "Enter name of the environment to deploy frontdoor"
  type        = string
}
variable "subscription" {
  description = "Name of the subscription to deploy frontdoor, e.g. stg"
  type        = string
}
variable "project" {
  description = "Name of the project"
  type        = string
}
variable "location" {
  description = "Azure location to deploy the resource"
  type        = string
}
variable "frontends" {
  description = "Variable holds frontdoor configuration"
  type        = any
}
variable "subscription_id" {
  description = "Enter Subscription ID"
  type        = string
}

variable "certificate_key_vault_name" {
  description = "Name of the Keyvault that holds certificate"
  type        = string
}
variable "oms_env" {
  description = "Name of the log analytics workspace"
  type        = string
}
variable "data_subscription" {
  description = "Enter data Subscription ID"
  type        = string

}

variable "control_vault" {
  description = "The tags to associate with your resources."
  type        = string
}
variable "tags" {
  description = "The tags to associate with your resources."
  type        = map(string)
  default = {
    Team = "PetApps-DevOps"
  }
}
