provider "azurerm" {
  version = "~>2.0"
  features {}
}

variable "subscription_id" {
  description = "The Subscription Id of Azure"
}

variable "client_id" {
  description = "Client id of the app that you registered in AAD"
}

variable "client_secret" {
  description = "Client secret of the app that you registered in AAD"
}

variable "tenant_id" {
  description = "tenant id of the app that you registered in AAD"
}
