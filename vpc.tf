#creating vpc
resource "aws_vpc" "vpc-1" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "demovpc"
  }
}

