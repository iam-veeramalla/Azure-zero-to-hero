terraform {
  backend "azurerm" {
    storage_account_name = "azurebackendstorageabhi"
    container_name = "backend"
    key = "terraform.tfstate"
    access_key = ""
  }
}