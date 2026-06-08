terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.76.0"
    }
  }
}
provider "azurerm" {
  features {
    
  }
}


resource "azurerm_resource_group" "Rg" {
  name = "resourceterrarg"
  location = "centralindia"
  managed_by = "udit"
}

resource "azurerm_storage_account" "storageacc" {
  name                     = "storageaccountterra"
  resource_group_name      = azurerm_resource_group.Rg.name
  location                 = azurerm_resource_group.Rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  
}

