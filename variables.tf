variable "prefix" {
  description = "Prefix for all resources."
  type        = string
  default     = "demo"
}

variable "location" {
  description = "The Azure region to deploy resources into."
  type        = string
  default     = "Central India"
}

variable "subscription_id" {
  description = "The subscription ID to deploy resources into."
  type        = string
}

variable "sku_tier" {
  description = "Storage SKU (Standard_LRS, Standard_GRS, Premium_LRS, etc.)"
  type        = string
  default     = "Standard_LRS"
}

variable "account_kind" {
  description = "Storage account kind (StorageV2 recommended for blobs + files + ADLS Gen2)"
  type        = string
  default     = "StorageV2"
}

variable "enable_hns" {
  description = "Enable hierarchical namespace (ADLS Gen2)"
  type        = bool
  default     = false
}

variable "blob_containers" {
  description = "A list of blob container names to create"
  type        = list(string)
  default     = ["app-logs"]
}

variable "file_shares" {
  description = "A list of file share names to create"
  type        = list(string)
  default     = ["fileshare"]
}
