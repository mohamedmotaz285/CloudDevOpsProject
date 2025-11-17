variable "vpc_cidr" {
  
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "azs" {
  
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}


variable "server_name" {
  
  type        = string
  default     = "clouddevops-server"
}

variable "server_ami" {
  
  type        = string
  default     = "ami-0c02fb55956c7d316"  
}

variable "server_instance_type" {
  
  type        = string
  default     = "t3.micro"
}

variable "server_key_name" {
  
  type        = string
}

variable "server_allowed_ssh_cidrs" {
  
  type        = list(string)
  default     = ["0.0.0.0/0"]
}


variable "eks_cluster_name" {
  
  type        = string
  default     = "clouddevops-eks-cluster"
}

variable "eks_instance_types" {
  
  type        = list(string)
  default     = ["t3.micro"]
}

variable "eks_desired_capacity" {
  
  type        = number
  default     = 2
}

variable "eks_min_size" {
  
  type        = number
  default     = 1
}

variable "eks_max_size" {
  
  type        = number
  default     = 3
}

variable "tags" {
  
  type        = map(string)
  default     = {
    Project = "CloudDevOpsLab"
  }
}
