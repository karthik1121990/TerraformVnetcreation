output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "The name of the Virtual Network"
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_address_space" {
  description = "The address space of the Virtual Network"
  value       = azurerm_virtual_network.vnet.address_space
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value = [
    for subnet in azurerm_subnet.subnets :
    subnet.id
  ]
}

output "subnet_names" {
  description = "The names of the subnets"
  value = [
    for subnet in azurerm_subnet.subnets :
    subnet.name
  ]
}
