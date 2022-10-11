resource "aws_route_table" "route_table_public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0" # go anywhere
    gateway_id = aws_internet_gateway.gw_internet.id
  }

  tags = {
    Name = "route_table_public"
  }
}

# root table attached to private subnets, they go to NAT, is in public subnet, then 

resource "aws_route_table" "route_table_private" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.gw_nat.id
  }

  tags = {
    Name = "main"
  }
}