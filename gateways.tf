resource "aws_nat_gateway" "gw_nat_public" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public_az_a

  tags = {
    Name = "VPC NAT gateway"
  }
}

resource "aws_internet_gateway" "gw_public" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "VPC internet public gateway"
  }
}




