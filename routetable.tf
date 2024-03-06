# Private Rout Table
resource "aws_route_table" "priv_rt" {
  vpc_id = aws_vpc.vpc1.id

# priv route table, edit the route, destination: 0.0.0.0/0, target: nat gateway
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.myprj_nat.id
  }

  tags = {
    Name = "priv-rt"
  }
}

resource "aws_route_table_association" "privsub_association" {
  subnet_id      = aws_subnet.privsub.id
  route_table_id = aws_route_table.priv_rt.id
}



# Public Route table
resource "aws_route_table" "pub_rt" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
  }

  tags = {
    Name = "pub-rt"
  }
}

resource "aws_route_table_association" "pubsub_association" {
  subnet_id      = aws_subnet.pubsub.id
  route_table_id = aws_route_table.pub_rt.id
}