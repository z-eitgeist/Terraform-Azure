terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.40.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azurerm" {
  features {}
  subscription_id = "e2e1a82a-53d9-4913-85f5-c6f8cbd850b5"
  alias = "azure_sub"
}

