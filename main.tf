resource "azurerm_virtual_network" "main" {
  name                = var.name
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name
  address_space       = var.network_cidr
  //dns_servers         = ["10.0.0.4", "10.0.0.5"]

  dynamic "subnet" {
    for_each = zipmap(var.subnet_name, var.subnet_cidr)
    content {
      name           = subnet.key
      address_prefix = subnet.value
    }
  }

  tags = merge(
    local.common_tags, var.extra_tags,
  )
}


resource "azurerm_subnet" "bastion" {
  count                = local.enable_bastion
  name                 = "AzureBastionSubnet"
  resource_group_name  = data.azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = var.bastion_subnet_address
}