
resource "azurerm_storage_account" "stg9" {
  name                     = "stg9april"
  resource_group_name      = "rg-april"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

