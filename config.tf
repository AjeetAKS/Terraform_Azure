terraform {
  required_version = ">=1.0"
  required_providers {
    azurerm ={
        version = ">=2.0"
        source = "hashicorp/azurerm"
    }
    random = {
      version = "3.0"
      source = "hashicorp/random"
    }
  }
  backend "azurerm" {
    resource_group_name = "terraform-backend"
    storage_account_name = "backendstorageterraprod"
    container_name = "tfstatefiles"
    key = "tfstate.prod"
    
  }
}

provider "azurerm" {
    client_id = "xxxxxxxxxxxxxxxxxxxxxxxxx"
    client_secret = "xxxxxxxxxxxxxxxxxxxxxxxxx"
    tenant_id = "xxxxxxxxxxxxxxxxxxxxxxxxx"
    subscription_id = "xxxxxxxxxxxxxxxxxxxxxxxxx"
  features {}
  
}

