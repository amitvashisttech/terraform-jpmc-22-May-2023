terraform {
  backend "azurerm" {
    resource_group_name  = "tstate"
    storage_account_name = "tstate10917"
    container_name       = "tstate"
    key                  = "terraform.tfstate"
  }
}
