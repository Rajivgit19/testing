terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg17"
    storage_account_name = "stg17"
    container_name       = "tfstate17"
    key                 = "logs"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "c031aa3a-a601-4446-882c-da628da25346"
}

module "common" {
  source = "../rg_block"
}

module "common1" {
    depends_on = [ module.common ]
  source = "../stg_block"
  
}

variable "rg_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-new"
}

variable "rg_name1" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-new1"
}