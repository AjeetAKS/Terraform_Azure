resource "azurerm_storage_account" "mystorage" {
    name = "backendstorageterraprd"
    location = " East US"
    account_replication_type = "LRS"
    resource_group_name = azurerm_resource_group.myrg.name
    account_tier = "Standard"
    tags = {
      Environment = "Prod"
      
    }
  
}