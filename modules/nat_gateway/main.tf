resource "aws_eip" "nat" {
  domain = "vpc"

  tags = {
    Name = var.name
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = var.public_subnet_id
  

  tags = {
    Name = var.name
  }
  depends_on    = [aws_eip.nat]
}