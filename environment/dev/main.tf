module "resource_group" {
    source = "../../Modules/azurerm_resource_group"

    rgs = var.resource_group
}

module "virtual_networks" {
    source = "../../Modules/azurerm_networking"

    virtual_networks = var.vnets
}