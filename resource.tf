resource "aws_instance" "web" {
  ami           = "ami-08a52ddb321b32a8c"
  instance_type = "t2.micro"
  # vpc_id        = aws_vpc.tf_vpc.id
  subnet_id = aws_subnet.tf_sub.id
  count = 2
  # security_groups             = [aws_security_group.tf_sg.id]
  # associate_public_ip_address = true

  # key_name = "mahmuda-key-pair"
}
