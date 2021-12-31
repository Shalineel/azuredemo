terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
    backend "local" {}
}
provider "azurerm" {
  features {}
}

data "azurerm_subscription" "current" {
}

data "http" "myip" {
  url = "https://api.ipify.org"
}
