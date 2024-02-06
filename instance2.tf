resource "aws_instance" "food" {
  ami           = "ami-0cf7b2f456cd5efd4"
  instance_type = "t2.micro"

  key_name               = "demo"
  vpc_security_group_ids = [aws_security_group.sg1.id]
  subnet_id              = aws_subnet.publicsubnet2.id

  associate_public_ip_address = true
  user_data                   = file("data2.sh")
  tags = {
    Name = "FOOD"
  }
}

