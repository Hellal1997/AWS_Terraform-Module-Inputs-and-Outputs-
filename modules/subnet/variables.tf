variable "vpc_id" {
  description = "The VPC ID for the subnet"
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
}

variable "map_public_ip_on_launch" {
  description = "Boolean to map public IP on launch. True for public subnets, false for private subnets"
  type        = bool
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}