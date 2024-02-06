resource "aws_subnet" "apppvtsubnet1" {
  vpc_id                  = aws_vpc.vpc-1.id
  cidr_block              = var.subnet1_cidr
  map_public_ip_on_launch = false
  availability_zone       = "us-east-2a"

  tags = {
    Name = "appsubnet1"
  }
}

