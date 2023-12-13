output "vnet_id" {
  description = "A vnet_id variable that will store the ID of the previously created VNet"
  value       = azurerm_virtual_network.example.id
}

output "control_plane_subnet_id" {
  description = "A control_plane_subnet_id variable that will hold the ID of the control plane subnet within the VNet"
  value       = azurerm_subnet.example.id
}

output "worker_node_subnet_id" {
  description = "A worker_node_subnet_id variable that will store the ID of the worker node subnet within the VNet"
  value       = azurerm_subnet.example1.id
}

output "networking_resource_group_name" {
  description = "A networking_resource_group_name variable that will provide the name of the Azure Resource Group where the networking resources were provisioned in"
  value       = azurerm_resource_group.example.name
}


output "aks_nsg_id" {
  description = "A aks_nsg_id variable that will store the ID of the Network Security Group (NSG)"
  value       = azurerm_network_security_group.example.id
}