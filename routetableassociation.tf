resource "aws_route_table_association" "RT1" {
  subnet_id      = aws_subnet.publicsubnet1.id
  route_table_id = aws_route_table.route.id
}



resource "aws_route_table_association" "RT2" {
  subnet_id      = aws_subnet.publicsubnet2.id
  route_table_id = aws_route_table.route.id
}

