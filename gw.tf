# Internet GW
resource "aws_internet_gateway" "silvex-gw-172-33" {
  vpc_id = aws_vpc.silvex-vpc-172-33.id

  tags = {
    Name = "silvex-gw-172-33"
  }
}
