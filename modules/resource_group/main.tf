resource "azurerm_resource_group" "main" {
  name     = "${var.porfolio_name}_${lower(var.resource_group_name)}_${var.resource_group_environment}"
  location = "${var.resource_group_location}"

  tags = {
    environment = "${var.resource_group_environment}"
  }
}
