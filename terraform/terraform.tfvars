vpc_cidr        = "10.0.0.0/16"
public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets = ["10.0.101.0/24", "10.0.102.0/24"]
azs             = ["us-east-1a", "us-east-1b"]



server_name            = "clouddevops-server"
server_ami             = "ami-0c02fb55956c7d316"  
server_instance_type   = "t3.medium"
server_key_name        = "my_new_key"          
server_allowed_ssh_cidrs = ["0.0.0.0/0"]


eks_cluster_name    = "clouddevops-eks-cluster"
eks_instance_types  = ["t3.medium"]
eks_desired_capacity = 2
eks_min_size        = 1
eks_max_size        = 4


tags = {
  Project = "CloudDevOpsLab"
}
