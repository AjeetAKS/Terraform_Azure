# Create a virtual network within the resource group	
resource "azurerm_virtual_network" "mynet" {
    name = "mynet-1"
    location = "East US"
    address_space = [ "10.0.0.0/16"]
    resource_group_name = azurerm_resource_group.myrg.name
  
}

# Create Subnet
resource "azurerm_subnet" "mysubnet" {
    name = "mysubnet-1"
    resource_group_name = azurerm_resource_group.myrg.name
    virtual_network_name = azurerm_virtual_network.mynet.name
    address_prefixes = [ "10.0.2.0/24" ]
  
}

# Create Public IP Address
resource "azurerm_public_ip" "publicip" {
    name = "publicip-1"
    location = azurerm_resource_group.myrg.location
    resource_group_name = azurerm_resource_group.myrg.name
    allocation_method = "Static"
  
}

# Create Network Interface
resource "azurerm_network_interface" "vmnic" {
    name = "vmnic-1"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    ip_configuration {
      name = "devnic"
      private_ip_address_allocation = "Dynamic"
      subnet_id = azurerm_subnet.mysubnet.id
      public_ip_address_id = azurerm_public_ip.publicip.id

    }
  
}