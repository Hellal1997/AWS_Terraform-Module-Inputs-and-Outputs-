variable "lb_name" {
  description = "Name of the load balancer"
  type        = string
}

variable "internal" {
  description = "Whether the load balancer is internal or not"
  type        = bool
  default     = false
}

variable "subnet_ids" {
  description = "List of subnet IDs for the load balancer"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs for the load balancer"
  type        = list(string)
}

variable "target_group_name" {
  description = "Name of the target group"
  type        = string
}

variable "target_group_port" {
  description = "Port of the target group"
  type        = number
  default     = 80
}

variable "target_group_protocol" {
  description = "Protocol of the target group"
  type        = string
  default     = "HTTP"
}

variable "vpc_id" {
  description = "VPC ID where the target group is created"
  type        = string
}

variable "listener_port" {
  description = "Port for the listener"
  type        = number
  default     = 80
}

variable "listener_protocol" {
  description = "Protocol for the listener"
  type        = string
  default     = "HTTP"
}

variable "instance_count" {
  description = "Number of instances to attach to the target group"
  type        = number
  default     = 1
}

variable "instance_ids" {
  description = "List of instance IDs to attach to the target group"
  type        = list(string)
}