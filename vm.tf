resource "azurerm_windows_virtual_machine" "myvm" {
    name = "myvm-db"
    computer_name = "myvmdb" #For hostname Only (Optional)
    resource_group_name = azurerm_resource_group.myrg.name
    network_interface_ids = [azurerm_network_interface.vmnic.id]
    size = "Standard_DS2_v2"
    location = azurerm_resource_group.myrg.location
    admin_username = "azureadmin"
    admin_password = "Password@123"
    
    os_disk {
      caching = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

    source_image_reference {
    publisher = "MicrosoftWindowsServer"
    version = "latest"
    sku = "2022-Datacenter"
    offer = "WindowsServer"
    }
    tags = {
      Environment = "Dev"
    }
}