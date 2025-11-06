resource "azurerm_storage_account" "sa" {
  name                     = local.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = contains(["Standard_LRS", "Standard_GRS", "Standard_RAGRS", "Standard_ZRS"], var.sku_tier) ? "Standard" : "Premium"
  account_replication_type = replace(var.sku_tier, "Standard_", "")
  account_kind             = var.account_kind

  # For ADLS Gen2:
  is_hns_enabled = var.enable_hns

  # Recommended settings (adjust if required)
  allow_nested_items_to_be_public = false
  min_tls_version                 = "TLS1_2"

  tags = {
    project = "terraform-storage"
    owner   = "shubham"
  }
}
