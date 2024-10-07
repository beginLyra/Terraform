provider "azurerm" {
  features {}
  subscription_id = "6c9013c7-4e29-464a-ae66-9f9e7ea9c55d"
  tenant_id       = "33a93990-8bb4-4b9d-b422-4f8851217d7e"
}
resource "azurerm_resource_group" "rg" {

  name     = "rg-${var.project}-${var.environment}"
  location = var.location
  tags = {
    environment = var.environment
    project     = var.project
    created_by  = "terraform"
  }
}
