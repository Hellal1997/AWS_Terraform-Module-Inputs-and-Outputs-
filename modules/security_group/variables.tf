variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
}

variable "name" {
  description = "The name of the Security Group."
  type        = string
}

variable "ingress_from_port" {
  description = "The starting port for ingress."
  type        = number
}

variable "ingress_to_port" {
  description = "The ending port for ingress."
  type        = number
}

variable "ingress_protocol" {
  description = "The protocol for ingress."
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "The CIDR blocks for ingress."
  type        = list(string)
}