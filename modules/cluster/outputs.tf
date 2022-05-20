output "cluster_id" {
  value = ibm_container_cluster.cluster.id
}

output "cluster_name" {
  value = ibm_container_cluster.cluster.name
}

output "ingress_hostname" {
  value = ibm_container_cluster.cluster.ingress_hostname
}

output "ingress_secret" {
  value = ibm_container_cluster.cluster.ingress_secret
}

output "public_service_endpoint" {
  value = ibm_container_cluster.cluster.public_service_endpoint_url
}

output "config_file_path" {
  value = data.ibm_container_cluster_config.cluster_config.config_file_path
}
