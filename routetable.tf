resource "aws_route_table" "route" {
  vpc_id = aws_vpc.vpc-1.id

  tags = {
    Name = "routetable"
  }
}

