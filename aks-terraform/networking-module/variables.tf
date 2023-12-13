variable "resource_group_name" {
    description = "devopsproject1ED"
    type = string
}

variable "location" {
  description = "The Azure region where the networking module will be deployed."
  type        = string
  default     = "uksouth"
}

variable "vnet_address_space" {
  description = "variable that specifies the address space for the Virtual Network (VNet) that you will create later in the main configuration file of this module."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}
