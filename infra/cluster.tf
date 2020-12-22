resource "azurerm_resource_group" "rg" {
  location = "West Europe"
  name = "gold-ochsen"
}

resource "azurerm_kubernetes_cluster" "cluster" {
  location = "West Europe"
  name = "main-cluster"
  resource_group_name = azurerm_resource_group.rg.name

  default_node_pool {
    name = "baseload"
    vm_size = "Standard_B2ms"
    node_count = 2
  }
  dns_prefix = "gold-ochsen"
  identity {
    type = "SystemAssigned"
  }
}
