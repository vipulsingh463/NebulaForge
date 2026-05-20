module "resource_group" {
  source = "../../Modules/azurerm_resource_group"

  rgs = var.resource_group
}

module "virtual_networks" {
  source           = "../../Modules/azurerm_networking"
  depends_on       = [module.resource_group]
  virtual_networks = var.vnets
}

module "storage_account" {
  source     = "../../Modules/azurerm_storage_account"
  depends_on = [module.resource_group]
  stgs       = var.stgs
}