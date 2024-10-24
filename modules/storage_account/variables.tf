# modules/storage_account/variables.tf
variable "storage_account_name" {
  description = "Nombre de la cuenta de almacenamiento"
  type        = string
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  type        = string
}

variable "location" {
  description = "Ubicación de la cuenta de almacenamiento"
  type        = string
}

variable "account_tier" {
  description = "Nivel de rendimiento de la cuenta de almacenamiento"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicación de la cuenta de almacenamiento"
  type        = string
  default     = "LRS"
}
