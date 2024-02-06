resource "aws_db_subnet_group" "subnetgroup" {
  name       = "database"
  subnet_ids = [aws_subnet.Datapvtsubnet1.id, aws_subnet.Datapvtsubnet2.id]
  tags = {
    Name = "mydbsubnets"
  }
}

resource "aws_db_instance" "RDS" {
  allocated_storage      = 10
  db_subnet_group_name   = aws_db_subnet_group.subnetgroup.id
  engine                 = "mysql"
  engine_version         = "8.0.35"
  instance_class         = "db.t2.micro"
  multi_az               = true
  identifier             = "mydb"
  username               = "rakesh"
  password               = "123456789"
  skip_final_snapshot    = true
  vpc_security_group_ids = [aws_security_group.Databasesg.id]
}

