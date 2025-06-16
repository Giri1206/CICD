resource "aws_instance" "myserver" {
  ami           = "ami-0cbad6815f3a09a6d"
  instance_type = "t2.micro"
  subnet_id = var.varsn
  security_groups = [var.varsg]


  tags = {
    Name = "mytestserver"
  }
}