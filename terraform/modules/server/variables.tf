variable "name" {
  
  type        = string
  default     = "clouddevops-server"
}

variable "ami" {
  
  type        = string
  default     = "ami-0c02fb55956c7d316"  
}

variable "instance_type" {
  
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  
  type        = string
}

variable "subnet_id" {
  
  type        = string
}

variable "vpc_id" {
  
  type        = string
}

variable "allowed_ssh_cidrs" {
  
  type        = list(string)
  default     = ["0.0.0.0/0"]  
}

variable "tags" {
  
  type        = map(string)
  default     = {}
}
