resource "aws_subnet" "publicsubnet2" {
  vpc_id                  = aws_vpc.vpc-1.id
  cidr_block              = var.subnet3_cidr
  map_public_ip_on_launch = true
  availability_zone       = "us-east-2b"

  tags = {
    Name = "websubnet2"
  }
}

