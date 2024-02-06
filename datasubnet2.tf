resource "aws_subnet" "Datapvtsubnet2" {
  vpc_id                  = aws_vpc.vpc-1.id
  cidr_block              = var.subnet5_cidr
  map_public_ip_on_launch = false
  availability_zone       = "us-east-2b"
  tags = {
    Name = "datasubnet2"
  }
}

