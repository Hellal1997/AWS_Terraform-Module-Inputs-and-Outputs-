output "route_table_id" {
  description = "The ID of the public Route Table."
  value       = aws_route_table.public.id
}