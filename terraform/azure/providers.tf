terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "roma-devops-rg"       
    storage_account_name = "myterraformstate"             
    container_name       = "tfstate"                    
    key                  = "terraform.tfstate"       
  }
}
provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id = "2b1816ab-fcb9-4bac-b22b-4541dc84410f"
  tenant_id       = "7631cd62-5187-4e15-8b8e-ef653e366e7a"
}
