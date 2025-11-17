resource "aws_eks_cluster" "clouddevops_eks_cluster" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn
  version  = "1.34"  

  vpc_config {
    subnet_ids              = var.private_subnets
    endpoint_private_access = true
    endpoint_public_access  = true
  }

  tags = var.tags
}

resource "aws_eks_node_group" "clouddevops_eks_nodes" {
  cluster_name    = aws_eks_cluster.clouddevops_eks_cluster.name
  node_group_name = "clouddevops-eks-nodes"
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.private_subnets

  scaling_config {
    desired_size = var.desired_capacity
    max_size     = var.max_size
    min_size     = var.min_size
  }

  instance_types = var.instance_types

  tags = var.tags
}
