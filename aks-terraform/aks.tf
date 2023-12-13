terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = "0b7f3d01-0ba7-4cfa-9419-2fb41da93cb6"
  client_secret   = "PYt8Q~K~W-6wiPGIs-Rkzn8WQ8ovFGO0qPfAVal5"
  subscription_id = "a1e2d71a-0def-40a7-ac13-8c475779e847"
  tenant_id       = "47d4542c-f112-47f4-92c7-a838d8a5e8ef"
}