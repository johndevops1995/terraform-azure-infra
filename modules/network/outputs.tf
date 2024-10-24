# modules/network/outputs.tf
output "vnet_id" {
  value = azurerm_virtual_network.this.id
}

output "subnet_id" {
  value = azurerm_subnet.this.id
}

output "public_ip_address" {
  value = azurerm_public_ip.this.ip_address
}
