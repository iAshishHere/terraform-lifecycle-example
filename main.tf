data "azurerm_resource_group" "rg" {
  name = "terraform-lifecycle-example"
}


resource "azurerm_container_registry" "example" {
  name                = "lifecyleexampleacr"
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = "east us"
  sku                 = "Premium"
}
