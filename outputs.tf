output "id" {
  value = azurerm_virtual_network.main.id
}
output "name" {
  value = azurerm_virtual_network.main.name
}
output "cidr" {
  value = azurerm_virtual_network.main.address_space
}
output "subnet" {
  value = azurerm_virtual_network.main.subnet[*].id
}
output "guid" {
  value = azurerm_virtual_network.main.guid
}
