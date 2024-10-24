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
