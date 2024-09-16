terraform {
  required_providers {
    azurerm ={
        version = ">=2.64.0"
        source = "hashicorp/azurerm"
    }
  }

}

provider "azurerm" {
    client_id = "XXXXXXXXXXXXXXXXXXXXXX"
    client_secret = "XXXXXXXXXXXXXXXXXXXXXX"
    tenant_id = "XXXXXXXXXXXXXXXXXXXXXX"
    subscription_id = "XXXXXXXXXXXXXXXXXXXXXX"
    features {}
    
  
}
