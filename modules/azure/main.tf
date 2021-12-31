terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
    backend "azurerm" {
        resource_group_name  = "demo"
        storage_account_name = "shaluneel18"
        container_name       = "democontainer"
        key                  = "terraform.tfstate"
    }
}
provider "azurerm" {
  features {}
}

data "azurerm_subscription" "current" {
}

data "http" "myip" {
  url = "https://api.ipify.org"
}
