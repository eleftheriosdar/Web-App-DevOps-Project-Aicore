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

module "networking" {
  source = "./networking-module"

  resource_group_name = "networking-rg"
  location           = "UK South"
  vnet_address_space = ["10.0.0.0/16"]

}

module "aks_cluster" {

  source = "./aks-cluster-module"

  aks_cluster_name           = "terraform-aks-cluster"
  cluster_location           = "UK South"
  dns_prefix                 = "myaks-project"
  kubernetes_version         = "1.26.6"
  service_principal_client_id = "0b7f3d01-0ba7-4cfa-9419-2fb41da93cb6"
  service_principal_client_secret = "PYt8Q~K~W-6wiPGIs-Rkzn8WQ8ovFGO0qPfAVal5"

  resource_group_name         = module.networking.resource_group_name
  vnet_id                     = module.networking.vnet_id
  control_plane_subnet_id     = module.networking.control_plane_subnet_id
  worker_node_subnet_id       = module.networking.worker_node_subnet_id
  aks_nsg_id                  = module.networking.aks_nsg_id

}
