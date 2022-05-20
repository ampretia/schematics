variable "name" {
  type        = string
  description = "The name that will be suffixed to the service names"
}

variable "admin_ibm_ids" {
  type    = list(string)
  default = []
}

variable "resource_group_id" {
  type        = string
  description = "The resource group to create the services in"
}