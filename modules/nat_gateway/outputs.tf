output "nat_gw_id" {
  description = "The ID of the NAT Gateway."
  value       = aws_nat_gateway.nat.id
}

output "elastic_ip_id" {
  description = "The ID of the Elastic IP."
  value       = aws_eip.nat.id
}