output "storage_account_name" {
  value = azurerm_storage_account.sa.name
}

output "blob_container_names" {
  value = [for c in azurerm_storage_container.blob_containers : c.name]
}

output "file_share_names" {
  value = [for s in azurerm_storage_share.file_shares : s.name]
}
