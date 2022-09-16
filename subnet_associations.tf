
# Subnet associations
resource "aws_route_table_association" "public_a" {
  subnet_id      = aws_subnet.public_az_a.id
  route_table_id = aws_route_table.route_table_public.id
}

resource "aws_route_table_association" "public_b" {
  subnet_id      = aws_subnet.public_az_b.id
  route_table_id = aws_route_table.route_table_public.id
}

resource "aws_route_table_association" "public_c" {
  subnet_id      = aws_subnet.public_az_c.id
  route_table_id = aws_route_table.route_table_public.id
}

resource "aws_route_table_association" "private_a" {
  subnet_id      = aws_subnet.private_az_a.id
  route_table_id = aws_route_table.route_table_private.id
}

resource "aws_route_table_association" "private_b" {
  subnet_id      = aws_subnet.private_az_b.id
  route_table_id = aws_route_table.route_table_private.id
}

resource "aws_route_table_association" "private_c" {
  subnet_id      = aws_subnet.private_az_c.id
  route_table_id = aws_route_table.route_table_private.id
}