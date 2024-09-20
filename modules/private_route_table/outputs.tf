output "route_table_id" {
  description = "The ID of the private Route Table."
  value       = aws_route_table.private.id
}