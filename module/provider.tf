terraform {

    required_providers {
      azurerm = {
        source  = "hashicorp/azurerm"
        version = "4.33.0"
      }
    }
  backend "azurerm" {
    resource_group_name = "nishant"
    storage_account_name = "nishnatstorage"
    container_name       = "nishantcontainer"
    key                  = "prod.terraform.tfstate"

    
  }
}
provider "azurerm" {
  features {}
  subscription_id = "bce8e725-3bb6-431a-b792-a07a35bfa7e1"
}