variable "name" {
  type        = string
  description = "The name of the cluster"
}

variable "resource_group_id" {
  type        = string
  description = "The resource group for the cluster"
}

variable "cluster_zone" {
  type        = string
  description = "`ibmcloud ks locations`"
}

variable "cluster_public_vlan_id" {
  type        = string
  default     = ""
  description = "`ibmcloud ks vlan ls --zone <zone>`"
}

variable "cluster_private_vlan_id" {
  type        = string
  default     = ""
  description = "`ibmcloud ks vlan ls --zone <zone>`"
}

variable "cluster_machine_type" {
  type        = string
  description = "`ibmcloud ks flavors --zone <location>`"
}

variable "size_per_zone" {
  type        = string
  description = "Number of Kubernetes workers per zone"
}

variable "cluster_hardware" {
  type        = string
  default     = "shared"
  description = "dedicated / shared"
}

variable "kube_version" {
  type        = string
  default     = "1.19"
  description = "Kubernetes version to use"
}

variable "entitlement" {
  type        = string
  default     = ""
  description = "The entitlement string to apply for OCP"
}