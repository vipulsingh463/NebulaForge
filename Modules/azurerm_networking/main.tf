resource "azurerm_virtual_network" "vnets" {
  for_each            = var.virtual_networks
  name                = each.value.name
  location            = each.value.location
  address_space       = each.value.cidr
  resource_group_name = each.value.resource_group_name

  dynamic "subnet" {
    for_each = each.value.subnets == null ? {} : each.value.subnets 

    content {
      name             = subnet.value.name
      address_prefixes = subnet.value.cidr

    }

  }
}
