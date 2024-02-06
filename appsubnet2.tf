resource "aws_subnet" "apppvtsubnet2" {
  vpc_id                  = aws_vpc.vpc-1.id
  cidr_block              = var.subnet4_cidr
  map_public_ip_on_launch = false
  availability_zone       = "us-east-2b"

  tags = {
    Name = "appsubnet2"
  }
}

