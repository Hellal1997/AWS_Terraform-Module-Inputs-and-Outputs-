variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
}

variable "subnet_ids" {
  description = "The ID of the private subnet."
  type        = list(string)
}

variable "name" {
  description = "The name of the Route Table."
  type        = string
}

variable "nat_gateway_id" {
  description = "The ID of NAT Gateway."
  type        = string
}