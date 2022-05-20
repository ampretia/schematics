# General
# API key for access to provision
variable "ibmcloud_api_key" {
  type        = string
  description = "`ibmcloud iam api-key-create Terraform -d 'terraform provisioning key'`"
}


# Cluster

variable "resource_group_name" {
  type        = string
  default     = "Default"
  description = "The resource group name to use"
}

variable "entitlement" {
  type        = string
  default     = ""
  description = "The entitlement string to apply for OCP"
}

variable "cluster_name" {
  type        = string
  description = "name of the cluster"
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
  description = "`ibmcloud ks machine-types <location>`"
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

# IAM
variable "iam_name" {
  type        = string
  default     = "marvin-iam"
  description = "name of the access group"
}

variable "admin_ibm_ids" {
  type    = list(string)
  default = ["nobody@ibm.com"]
}
