# terraform-azure/providers.tf
provider "azurerm" {
  features {}
}

# Definir backend para guardar el estado de Terraform en Azure Storage
terraform {
  backend "azurerm" {
    resource_group_name   = "helisa-services-dev"
    storage_account_name  = "helisadocumentstoragepro"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}

