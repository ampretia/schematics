
provider "ibm" {
  ibmcloud_api_key   = var.ibmcloud_api_key
}

data "ibm_resource_group" "resource_group" {
  name = var.resource_group_name
}
module "cluster" {
  source                  = "./modules/cluster"
  name                    = var.cluster_name
  cluster_zone            = var.cluster_zone
  cluster_public_vlan_id  = var.cluster_public_vlan_id
  cluster_private_vlan_id = var.cluster_private_vlan_id
  size_per_zone           = var.size_per_zone
  cluster_machine_type    = var.cluster_machine_type
  cluster_hardware        = var.cluster_hardware
  kube_version            = var.kube_version
  resource_group_id       = data.ibm_resource_group.resource_group.id
}

# module "iam" {
#   name              = var.iam_name
#   source            = "./modules/iam"
#   resource_group_id = data.ibm_resource_group.resource_group.id
#   admin_ibm_ids     = var.admin_ibm_ids
# }
