resource "azurerm_resource_group" "k8s" {
  name     = "aks_rg"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "k8s" {
  name                = "aks_cluster"
  location            = azurerm_resource_group.k8s.location
  resource_group_name = azurerm_resource_group.k8s.name
  dns_prefix          = "aksclusterex"

default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_D2_v2"
  }

  tags = {
    Environment = "Production"
  }
}

output "client_certificate" {
    value = azurerm_kubernetes_cluster.k8s.kube_config.0.client_certificate
}

output "kube_config" {
    value = azurerm_kubernetes_cluster.k8s.kube_config_raw
}