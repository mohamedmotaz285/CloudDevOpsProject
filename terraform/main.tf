terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
  required_version = ">= 1.5.0"
}

provider "aws" {
  region = "us-east-1"
}


# Network Module

module "network" {
  source = "./modules/network"

  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  azs             = var.azs
}


# Server Module

module "server" {
  source        = "./modules/server"
  name          = var.server_name
  ami           = var.server_ami
  instance_type = var.server_instance_type
  key_name      = var.server_key_name
  subnet_id     = module.network.public_subnet_1_id
  vpc_id        = module.network.vpc_id
  allowed_ssh_cidrs = var.server_allowed_ssh_cidrs
  tags          = var.tags
}


#Data Source

data "aws_iam_role" "eks_cluster_role" {
  name = "c185535a4804566l12208197t1w814623-LabEksClusterRole-kQYGySA4ZunJ"
}

data "aws_iam_role" "eks_node_role" {
  name = "c185535a4804566l12208197t1w814623696-LabEksNodeRole-xfTfItr6CoYO"
}


# EKS Module

module "eks" {
  source           = "./modules/eks"
  cluster_name     = var.eks_cluster_name
  cluster_role_arn = data.aws_iam_role.eks_cluster_role.arn
  node_role_arn    = data.aws_iam_role.eks_node_role.arn
  private_subnets  = [module.network.private_subnet_1_id, module.network.private_subnet_2_id]
  instance_types   = var.eks_instance_types
  desired_capacity = var.eks_desired_capacity
  min_size         = var.eks_min_size
  max_size         = var.eks_max_size
  tags             = var.tags
}
