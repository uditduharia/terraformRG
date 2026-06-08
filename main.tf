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