# vpc, subnet, security
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true 

  tags =   {
    Name = "vpctest1"
  }
}

resource "aws_subnet" "public_sn" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-west-1"

  tags =   {
    Name = "pb_subnet_1"
  }
}
resource "aws_security_group" "sg" {
  vpc_id = aws_vpc.myvpc.id
  name = "sg_test1"
  description = "public security"
  ingress{
    from_port =22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   egress{
    from_port =0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  
}