# Outputs your resource IDs
output "vpc_id" {
  value = aws_vpc.vpc1.id //resource_type.resource_name
}

output "public_subnet_id" {
  value = aws_subnet.pubsub.id
}

output "private_subnet_id" {
  value = aws_subnet.privsub.id
}

output "igw_id" {
  value = aws_internet_gateway.my_igw.id
}

output "Private_rt" {
  value = aws_route_table.priv_rt.id
}

output "Public_rt" {
  value = aws_route_table.pub_rt.id
}

output "security_group_id" {
#   value = aws_security_group.my_sg.id
  value = aws_security_group.my_pubsg.id
}

output "nat_eip" {
  value = aws_eip.nat_eip.id
}