
resource "ibm_iam_access_group" "admingroup" {
  name        = "${var.name} admin group"
  description = "Administrators of all services in the blockchain resource group"
}

resource "ibm_iam_service_id" "serviceID" {
  name        = "${var.name} admin service account"
  description = "Service account for all services in the blockchain resource group"
}

resource "ibm_iam_access_group_members" "admingroupmembers" {
  access_group_id = ibm_iam_access_group.admingroup.id
  ibm_ids         = var.admin_ibm_ids
  iam_service_ids = [ibm_iam_service_id.serviceID.id]
}

resource "ibm_iam_access_group_policy" "policy" {
  access_group_id = ibm_iam_access_group.admingroup.id
  roles           = ["Manager", "Writer", "Administrator"]

  resources {
    resource_group_id = var.resource_group_id
  }
}