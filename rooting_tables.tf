resource "aws_route_table" "route_table_public" {
  vpc_id = aws_vpc.default.id

  route {
    cidr_block = "0.0.0.0/24"
    gateway_id = aws_internet_gateway.gw_public.id
  }

  route {
    ipv6_cidr_block        = "::/0"
    egress_only_gateway_id = aws_egress_only_internet_gateway.foo.id
  }

  tags = {
    Name = "route_table_public"
  }
}

resource "aws_route_table" "route_table_private" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw_public.id
  }

  tags = {
    Name = "main"
  }
}

resource "aws_route_table_association" "public_a" {
  subnet_id      = aws_subnet.public_az_a.id
  route_table_id = aws_route_table.route_table_public.id
}