variable "project_name" {
  description = "Name of the project."
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to use for instances."
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instances."
  type        = string
}

variable "instance_name" {
  description = "Prefix for the instance names."
  type        = string
}

variable "lb_name" {
  description = "Name for the load balancer."
  type        = string
}

variable "key_name" {
  description = "The name of the key pair to use for SSH access."
  type        = string
}