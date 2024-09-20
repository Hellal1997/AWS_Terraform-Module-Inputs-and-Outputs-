output "instance_ids" {
  value = aws_instance.instance[*].id
  description = "The IDs of the launched instances"
}

output "instance_public_ips" {
  value = aws_instance.instance[*].public_ip
  description = "The public IPs of the launched instances"
}