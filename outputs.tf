output "internet_gateway_id" {
  description = "The ID of the Internet Gateway."
  value       = module.internet_gateway.internet_gateway_id
}

output "public_route_table_id" {
  description = "The ID of the public Route Table."
  value       = module.public_route_table.route_table_id
}

output "private_route_table_id" {
  description = "The ID of the private Route Table."
  value       = module.private_route_table.route_table_id
}

output "nat_gateway_id" {
  description = "The ID of the NAT Gateway."
  value       = module.nat_gateway.nat_gw_id
}

