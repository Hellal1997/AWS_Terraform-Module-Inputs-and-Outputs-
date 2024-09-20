variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
}

variable "internet_gateway_id" {
  description = "The ID of the Internet Gateway."
  type        = string
}

variable "subnet_ids" {
  description = "The ID of the public subnet."
  type        = list(string)
}

variable "name" {
  description = "The name of the Route Table."
  type        = string
}