//Create my VPC
resource "aws_vpc" "tf_vpc" {
  cidr_block = "192.168.0.0/28"
  tags = {
    Name = "tf_vpc"
  }
}
//Create a Subnet
resource "aws_subnet" "tf_sub" {
  vpc_id     = aws_vpc.tf_vpc.id
  cidr_block = "192.168.0.0/28"
}
