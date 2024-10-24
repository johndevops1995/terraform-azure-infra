# modules/resource_group/variables.tf
variable "name" {
  description = "Nombre del grupo de recursos"
  type        = string
}

variable "location" {
  description = "Ubicación del grupo de recursos"
  type        = string
}
