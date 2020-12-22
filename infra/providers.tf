terraform {
  backend "azurerm" {
    storage_account_name = "terraformgoldochsen"
    container_name = "tfstate"
    key = "prod.terraform.tfstate"
    resource_group_name = "gold-ochsen-state"

  }
  required_providers {
    azurerm = {
      version = "=2.40.0"
    }
  }
}
provider "azurerm" {
  features {}
}
