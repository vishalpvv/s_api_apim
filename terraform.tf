terraform {
    backend "azurerm" {
        storage_account_name = "storage_account_name"
        container_name       = "tfstates"
        key                  = "apim.tfstate"
        access_key           = "access_key"
    }
}