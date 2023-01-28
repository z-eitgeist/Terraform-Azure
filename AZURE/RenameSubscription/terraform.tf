# Terraform block
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.40.0"
    }
    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }
}

# Providers
provider "azurerm" {
  features {}
}

