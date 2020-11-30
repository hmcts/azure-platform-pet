variable "env" {
  type = string
}
variable "subscription" {
  type = string
}
variable "project" {
  type = string
}
variable "location" {
  type = string
}
variable "frontends" {
  type = any
}
variable "subscription_id" {
  type = string
}

variable "certificate_key_vault_name" {
  type = string
}
variable "oms_env" {
  type = string
}
variable "data_subscription" {
  type = string

}

variable "environment" {
  type = string
}
variable "control_vault" {
  type = string
}
variable "tags" {
  description = "The tags to associate with your resources."
  type        = map(string)
  default = {
    Team = "PetApps-DevOps"
  }
}