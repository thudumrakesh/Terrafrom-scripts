resource "aws_security_group" "Databasesg" {
  name        = "Databasesg"
  description = "allow inbound traffic from application layer"
  vpc_id      = aws_vpc.vpc-1.id

  ingress {
    description     = "allow traffic from application layer"
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [aws_security_group.sg1.id]
  }

  egress {
    from_port   = 32768
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "databasesg"
  }
}

