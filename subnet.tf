# Public Subnet
resource "aws_subnet" "pubsub" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "192.168.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet"
  }
}

# Private Subnet
resource "aws_subnet" "privsub" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "192.168.2.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "private-subnet"
  }
}

