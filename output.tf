resource "local_file" "exports_k8s" {
  content = <<EOF
export K8S_AUTH_KUBECONFIG=${module.cluster.config_file_path}
export KUBECONFIG=${module.cluster.config_file_path}
export CLUSTER_NAME=${module.cluster.cluster_name}
export CLUSTER_ID=${module.cluster.cluster_id}
export CLUSTER_INGRESS_HOSTNAME=${module.cluster.ingress_hostname}
export CLUSTER_INGRESS_SECRET=${module.cluster.ingress_secret}
export CLUSTER_PUBLIC_SERVICE_URL=${module.cluster.public_service_endpoint}
EOF

  filename = "${path.module}/cluster-config/.env-k8"
}
