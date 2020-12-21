resource "azurerm_resource_group" "rg" {
  location = "West Europe"
  name = "gold-ochsen"
}

resource "azurerm_kubernetes_cluster" "cluster" {
  location = "West Europe"
  name = "main-cluster"
  resource_group_name = ""
  default_node_pool {
    name = ""
    vm_size = ""
  }
  dns_prefix = ""
}
