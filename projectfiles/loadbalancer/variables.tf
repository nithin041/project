variable "region" {
  default = "ap-south-1"
}
variable "ami_id" {
  type = string
}
variable "instance_type" {
  type = string
}
variable "vpc_id" {
  description = "VPC ID where resources will be created"
}

variable "subnet1" {
  description = "List of subnet IDs for ALB and ASG"
  type        = string
}
variable "subnet2" {
    type = string
  
}

variable "desired_capacity" {
  default = 2
}

variable "min_size" {
  default = 1
}

variable "max_size" {
  default = 3
}

