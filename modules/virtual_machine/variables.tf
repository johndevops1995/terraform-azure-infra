# modules/virtual_machine/variables.tf
variable "name" {
  description = "Nombre de la máquina virtual"
  type        = string
}

variable "location" {
  description = "Ubicación de la máquina virtual"
  type        = string
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
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
  description = "Nombre de usuario administrador"
  type        = string
}

variable "admin_password" {
  description = "Contraseña de administrador"
  type        = string
}
