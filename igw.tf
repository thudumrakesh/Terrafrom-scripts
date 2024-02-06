resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.vpc-1.id
}

