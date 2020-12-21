terraform {
  required_providers {
    azurerm = {
      version = "=2.40.0"
    }
  }
}
provider "azurerm" {
  features {}
}
