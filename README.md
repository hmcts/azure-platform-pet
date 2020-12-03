# azure-platform-pet# https://github.com/hmcts/azure-platform-pet

This repository contains the Infrastructure As Code for orchestrating, deploying and managing PET project.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| azurerm | 2.23.0 |

## Providers

| Name | Version |
|------|---------|
| azuread | n/a |
| azurerm | 2.23.0 |
| azurerm.loganalytics | 2.23.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| certificate\_key\_vault\_name | Name of the Keyvault that holds certificate | `string` | n/a | yes |
| control\_vault | The tags to associate with your resources. | `string` | n/a | yes |
| data\_subscription | Enter data Subscription ID | `string` | n/a | yes |
| env | Enter name of the environment to deploy frontdoor | `string` | n/a | yes |
| frontends | Variable holds frontdoor configuration | `any` | n/a | yes |
| location | Azure location to deploy the resource | `string` | n/a | yes |
| oms\_env | Name of the log analytics workspace | `string` | n/a | yes |
| project | Name of the project | `string` | n/a | yes |
| subscription | Name of the subscription to deploy frontdoor, e.g. stg | `string` | n/a | yes |
| subscription\_id | Enter Subscription ID | `string` | n/a | yes |
| tags | The tags to associate with your resources. | `map(string)` | <pre>{<br>  "Team": "PetApps-DevOps"<br>}</pre> | no |

## Outputs

No output.

