resource "azurerm_storage_container" "blob_containers" {
  for_each              = toset(var.blob_containers)
  name                  = each.value
  storage_account_id    = azurerm_storage_account.sa.id
  container_access_type = "private" // options: private, blob, container
}
