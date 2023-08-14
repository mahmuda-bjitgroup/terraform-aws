resource "aws_instance" "web" {
  ami           = "ami-08a52ddb321b32a8c"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.tf_sub.id
  count = 2
}
