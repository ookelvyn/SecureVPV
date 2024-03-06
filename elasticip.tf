resource "aws_eip" "nat_eip" {
  instance = null
#   aws_nat_gateway.myprj_nat.id

tags = {
    Name = "my-eip"
  }

}