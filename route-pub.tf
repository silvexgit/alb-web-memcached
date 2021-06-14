# route tables
resource "aws_route_table" "silvex-rt-pub" {
  vpc_id = aws_vpc.silvex-vpc-172-33.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.silvex-gw-172-33.id
  }

  tags = {
    Name = "silvex-rt-pub-1"
  }
}

# route associations public
resource "aws_route_table_association" "silvex-rt-pub-1-a" {
  subnet_id      = aws_subnet.silvex-sn-172-33-pub-1.id
  route_table_id = aws_route_table.silvex-rt-pub.id
}

resource "aws_route_table_association" "silvex-rt-pub-2-a" {
  subnet_id      = aws_subnet.silvex-sn-172-33-pub-2.id
  route_table_id = aws_route_table.silvex-rt-pub.id
}

resource "aws_route_table_association" "silvex-rt-pub-3-a" {
  subnet_id      = aws_subnet.silvex-sn-172-33-pub-3.id
  route_table_id = aws_route_table.silvex-rt-pub.id
}
