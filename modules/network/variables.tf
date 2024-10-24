# modules/network/variables.tf
variable "vnet_name" {
  description = "Nombre de la red virtual"
  type        = string
}

variable "address_space" {
  description = "Espacio de direcciones de la red virtual"
  type        = list(string)
}

variable "location" {
  description = "Ubicación de la red virtual"
  type        = string
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  type        = string
}

variable "subnet_name" {
  description = "Nombre de la subred"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Prefijos de direcciones de la subred"
  type        = list(string)
}

variable "public_ip_name" {
  description = "Nombre de la dirección IP pública"
  type        = string
}
