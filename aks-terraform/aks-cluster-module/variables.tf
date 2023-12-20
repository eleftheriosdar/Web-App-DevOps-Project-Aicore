variable "aks_cluster_name" {
    description = "the name of the AKS cluster you wish to create"
    type = string
}

variable "cluster_location" {
  description = "The  Azure region where the AKS cluster will be deployed to."
  type        = string
  default     = "uksouth"
}

variable "dns_prefix" {
  description = "defines the DNS prefix of cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "that specifies which Kubernetes version the cluster will use"
  type        = string
}

variable "service_principal_client_id" {
  description = "that specifies which Kubernetes version the cluster will use"
  type        = string
}

variable "service_principal_client_secret" {
  description = "variable that supplies the Client Secret for the service principal"
  type        = string
}

variable "aks_nsg_id" {
  description = "aks nsg id"
}


variable "resource_group_name" {
  description = "resource_group_name"
}

variable "vnet_id" {
  description = "A vnet_id variable that will store the ID of the previously created VNet"
}

variable "control_plane_subnet_id" {
  description = "A control_plane_subnet_id variable that will hold the ID of the control plane subnet within the VNet"
}

variable "worker_node_subnet_id" {
  description = "A worker_node_subnet_id variable that will store the ID of the worker node subnet within the VNet"
}



