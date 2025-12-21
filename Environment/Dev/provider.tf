terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.56.0"
    }
  }
  backend "azurerm" {}
}


provider "azurerm" {
  features {}
  subscription_id = "ff4b8dcc-265a-4fdf-9501-146b37e6ac66"

}
