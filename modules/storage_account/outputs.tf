# modules/storage_account/outputs.tf
output "storage_account_name" {
  value = azurerm_storage_account.this.name
}

output "storage_account_primary_endpoint" {
  value = azurerm_storage_account.this.primary_blob_endpoint
}
