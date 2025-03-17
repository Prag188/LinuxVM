terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
 
  backend "azurerm" {
    resource_group_name   = "NEWPRAG" # Replace with your Azure Resource Group
    storage_account_name  = "stgterraform10"  # Replace with your Azure Storage Account
    container_name        = "terraformbackup"      # Replace with your container
    key                  = "azurelinuxvm.tfstate"    # State file name
  }
}
  
provider "azurerm" {
  skip_provider_registration = true
  features {}
}
