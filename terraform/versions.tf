terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.8.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.3"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-terraform-dev"
    storage_account_name = "stterraform17"
    container_name       = "tfstate"
    key                  = "kjetilsblog-dev"
  }
}

provider "azurerm" {
  features {}
}
