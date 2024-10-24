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

# environments/qa/main.tf
module "storage_account" {
  source              = "../../modules/storage_account"
  storage_account_name = var.storage_account_name
  resource_group_name  = module.resource_group.resource_group_name
  location            = var.location
  account_tier        = var.account_tier
  account_replication_type = var.account_replication_type
}

# environments/qa/main.tf
module "network" {
  source              = "../../modules/network"
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  subnet_name         = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
  public_ip_name      = var.public_ip_name
}
