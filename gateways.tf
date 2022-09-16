resource "aws_internet_gateway" "gw_internet" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "VPC internet public gateway"
  }
}

# nat_eip is fix IPv4 on public_a 
resource "aws_nat_gateway" "gw_nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_az_a.id

  tags = {
    Name = "VPC NAT gateway"
  }
}


resource "aws_eip" "nat_eip" {
  vpc      = true
}


