terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.59.0"
    }
  }
    backend "azurerm" {
    resource_group_name  = "rg-dev"
    storage_account_name = "storion"
    container_name       = "storionc"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "e9353bd8-5b79-4a91-9500-36beb348477e"
}
