resource "aws_subnet" "publicsubnet1" {
  vpc_id                  = aws_vpc.vpc-1.id
  cidr_block              = var.subnet_cidr
  map_public_ip_on_launch = true
  availability_zone       = "us-east-2a"

  tags = {
    Name = "websubnet1"
  }
}


