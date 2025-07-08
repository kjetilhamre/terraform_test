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
  subscription_id = "a68d44d2-e9b2-45a5-8368-f26ba222ca0a"
}
