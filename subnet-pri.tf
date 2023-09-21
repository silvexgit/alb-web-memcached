#
# Private Subnets
#
resource "aws_subnet" "silvex-sn-172-33-pri-1" {
  vpc_id                  = aws_vpc.silvex-vpc-172-33.id
  cidr_block              = "172.33.4.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.SILVEX-REGION-A}"

  tags = {
    Name = "silvex-sn-172-33-pri-1"
  }
}

resource "aws_subnet" "silvex-sn-172-33-pri-2" {
  vpc_id                  = aws_vpc.silvex-vpc-172-33.id
  cidr_block              = "172.33.5.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.SILVEX-REGION-B}"

  tags = {
    Name = "silvex-sn-172-33-pri-2"
  }
}

resource "aws_subnet" "silvex-sn-172-33-pri-3" {
  vpc_id                  = aws_vpc.silvex-vpc-172-33.id
  cidr_block              = "172.33.6.0/24"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.SILVEX-REGION-C}"

  tags = {
    Name = "silvex-sn-172-33-pri-3"
  }
}
