output "eks_cluster_name" {
  value       = aws_eks_cluster.clouddevops_eks_cluster.name
}

output "eks_cluster_endpoint" {
  value       = aws_eks_cluster.clouddevops_eks_cluster.endpoint
}

output "eks_cluster_security_group_id" {
  value       = aws_eks_cluster.clouddevops_eks_cluster.vpc_config[0].cluster_security_group_id
}

output "eks_node_group_name" {
  value       = aws_eks_node_group.clouddevops_eks_nodes.node_group_name
}

output "eks_node_group_status" {
  value       = aws_eks_node_group.clouddevops_eks_nodes.status
}
