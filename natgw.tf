resource "aws_nat_gateway" "myprj_nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id    = aws_subnet.pubsub.id
  tags = {
    Name = "myprj-nat-gw"
  }
}

