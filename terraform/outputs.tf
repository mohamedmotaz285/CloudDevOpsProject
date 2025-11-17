output "vpc_id" {
  value = module.network.vpc_id
}

output "public_subnet_1_id" {
  value = module.network.public_subnet_1_id
}

output "public_subnet_2_id" {
  value = module.network.public_subnet_2_id
}

output "private_subnet_1_id" {
  value = module.network.private_subnet_1_id
}

output "private_subnet_2_id" {
  value = module.network.private_subnet_2_id
}

output "server_public_ip" {
  value = module.server.server_public_ip
}

output "eks_cluster_name" {
  value = module.eks.eks_cluster_name
}

output "eks_cluster_endpoint" {
  value = module.eks.eks_cluster_endpoint
}

output "eks_node_group_name" {
  value = module.eks.eks_node_group_name
}
