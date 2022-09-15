resource "aws_vpc" "main" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"
#  availability_zone = "eu-central-1a"
  tags = {
    Name = "main"
  }
}