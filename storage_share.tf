resource "azurerm_storage_share" "file_shares" {
  for_each           = toset(var.file_shares)
  name               = each.value
  storage_account_id = azurerm_storage_account.sa.id
  quota              = 5120 # GB - adjust as needed
}
