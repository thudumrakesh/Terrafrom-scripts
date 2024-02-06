resource "aws_subnet" "Datapvtsubnet1" {
  vpc_id                  = aws_vpc.vpc-1.id
  cidr_block              = var.subnet2_cidr
  map_public_ip_on_launch = false
  availability_zone       = "us-east-2a"

  tags = {
    Name = "Datasubnet1"
  }
}

