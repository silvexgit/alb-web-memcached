# nat gw
resource "aws_eip" "nat" {
  domain   = "vpc"
}

resource "aws_nat_gateway" "silvex-nat-gw" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.silvex-sn-172-33-pub-1.id
  depends_on    = [aws_internet_gateway.silvex-gw-172-33]
}

# VPC setup for NAT
resource "aws_route_table" "silvex-rt-pri" {
  vpc_id = aws_vpc.silvex-vpc-172-33.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.silvex-nat-gw.id
  }

  tags = {
    Name = "silvex-rt-pri-1"
  }
}

# route associations private
resource "aws_route_table_association" "silvex-rt-pri-1-a" {
  subnet_id      = aws_subnet.silvex-sn-172-33-pri-1.id
  route_table_id = aws_route_table.silvex-rt-pri.id
}

resource "aws_route_table_association" "silvex-rt-pri-2-a" {
  subnet_id      = aws_subnet.silvex-sn-172-33-pri-2.id
  route_table_id = aws_route_table.silvex-rt-pri.id
}

resource "aws_route_table_association" "silvex-rt-pri-3-a" {
  subnet_id      = aws_subnet.silvex-sn-172-33-pri-3.id
  route_table_id = aws_route_table.silvex-rt-pri.id
}
