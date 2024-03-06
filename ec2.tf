# Public Server
resource "aws_instance" "pub_ec2" {
  ami = "ami-067d1e60475437da2" //get ami from aws
  key_name = "secondkey"
  subnet_id = aws_subnet.pubsub.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.my_pubsg.id]

  tags = {
    Name = "PubServer"
  }
}


# Private Server
resource "aws_instance" "priv_ec2" {
  ami = "ami-067d1e60475437da2" //get ami from aws
  key_name = "secondkey"
  subnet_id = aws_subnet.privsub.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.my_pubsg.id]

  tags = {
    Name = "PrivServer"
  }
}
