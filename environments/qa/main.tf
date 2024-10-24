# environments/qa/main.tf
provider "azurerm" {
  features {}
}


module "resource_group" {
  source   = "../../modules/resource_group"
  name     = var.resource_group_name
  location = var.location
}

module "virtual_machine" {
  source               = "../../modules/virtual_machine"
  name                 = var.vm_name
  location             = module.resource_group.resource_group_location
  resource_group_name  = module.resource_group.resource_group_name
  network_interface_id = var.network_interface_id
  vm_size              = var.vm_size
  admin_username       = var.admin_username
  admin_password       = var.admin_password
}
