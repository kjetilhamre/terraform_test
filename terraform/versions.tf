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
    resource_group_name  = "rg-kjetilsblog-dev"
    storage_account_name = "st3rneuaikir"
    container_name       = "tfstate"
    key                  = "kjetilsblog-dev"
  }
}

provider "azurerm" {
  features {}
}
