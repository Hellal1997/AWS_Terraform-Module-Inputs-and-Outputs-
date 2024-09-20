resource "aws_route_table" "private" {
  vpc_id = var.vpc_id


  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.nat_gateway_id
  }


  tags = {
    Name = var.name
  }
}

resource "aws_route_table_association" "private_association" {
  count      = length(var.subnet_ids)
  subnet_id  = var.subnet_ids[count.index]
  route_table_id = aws_route_table.private.id
  depends_on     = [aws_route_table.private]
}