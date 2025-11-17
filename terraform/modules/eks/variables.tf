variable "cluster_name" {
  type        = string
  default     = "clouddevops-eks-cluster"
}

variable "cluster_role_arn" {
  type        = string
}

variable "node_role_arn" {
  type        = string
}

variable "private_subnets" {
  type        = list(string)
}

variable "instance_types" {
  type        = list(string)
  default     = ["t3.micro"]  
}

variable "desired_capacity" {
  type        = number
  default     = 2
}

variable "min_size" {
  type        = number
  default     = 1
}

variable "max_size" {
  type        = number
  default     = 3
}

variable "tags" {
  type        = map(string)
  default     = {}
}
