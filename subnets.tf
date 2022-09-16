## AZ A 

resource "aws_subnet" "public_az_a" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.1.0/24"
    availability_zone = "eu-central-1a"
    map_public_ip_on_launch = true
  tags = {
    Name = "public_az_a"
  }
}

resource "aws_subnet" "private_az_a" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.11.0/24"
    availability_zone = "eu-central-1a"
  tags = {
    Name = "private_az_a"
  }
}


# AZ B 

resource "aws_subnet" "public_az_b" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.2.0/24"
    availability_zone = "eu-central-1b"
    map_public_ip_on_launch = true
  tags = {
    Name = "public_az_b"
  }
}

resource "aws_subnet" "private_az_b" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.12.0/24"
    availability_zone = "eu-central-1b"
  tags = {
    Name = "private_az_b"
  }
}

# AZ C 

resource "aws_subnet" "public_az_c" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.3.0/24"
    availability_zone = "eu-central-1c"
    map_public_ip_on_launch = true
  tags = {
    Name = "public_az_c"
  }
}

resource "aws_subnet" "private_az_c" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.13.0/24"
    availability_zone = "eu-central-1c"
  tags = {
    Name = "private_az_c"
  }
}