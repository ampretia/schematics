
resource "ibm_container_cluster" "cluster" {
  name              = var.name
  datacenter        = var.cluster_zone
  machine_type      = var.cluster_machine_type
  hardware          = var.cluster_hardware
  public_vlan_id    = var.cluster_public_vlan_id
  private_vlan_id   = var.cluster_private_vlan_id
  kube_version      = var.kube_version

  default_pool_size = 2
  public_service_endpoint  = "true"
  private_service_endpoint = "false"

  force_delete_storage = "true"

  resource_group_id = var.resource_group_id
  entitlement = var.entitlement

  timeouts {
    create = "6h"
  }
}

data "ibm_container_cluster_config" "cluster_config" {
  cluster_name_id   = ibm_container_cluster.cluster.id
  resource_group_id = var.resource_group_id
  config_dir        = "${path.root}/cluster-config"
}
