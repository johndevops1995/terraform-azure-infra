# environments/qa/variables.tf
variable "resource_group_name" {
  description = "Nombre del grupo de recursos para QA"
  type        = string
}

variable "location" {
  description = "Ubicación del grupo de recursos"
  type        = string
  default     = "East US"
}

variable "vm_name" {
  description = "Nombre de la máquina virtual"
  type        = string
}

variable "network_interface_id" {
  description = "ID de la interfaz de red"
  type        = string
}

variable "vm_size" {
  description = "Tamaño de la máquina virtual"
  type        = string
  default     = "Standard_B1ms"
}

variable "admin_username" {
  description = "Usuario administrador"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Contraseña de administrador"
  type        = string
}

# environments/qa/variables.tf
variable "storage_account_name" {
  description = "Nombre de la cuenta de almacenamiento para QA"
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

# environments/qa/variables.tf
variable "vnet_name" {
  description = "Nombre de la red virtual"
  type        = string
}

variable "address_space" {
  description = "Espacio de direcciones de la red virtual"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Nombre de la subred"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Prefijos de direcciones de la subred"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "public_ip_name" {
  description = "Nombre de la dirección IP pública"
  type        = string
}
