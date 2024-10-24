# modules/virtual_machine/outputs.tf
output "vm_id" {
  value = azurerm_virtual_machine.this.id
}
