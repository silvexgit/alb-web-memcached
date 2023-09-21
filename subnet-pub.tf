# Subnets
resource "aws_subnet" "silvex-sn-172-33-pub-1" {
  vpc_id                  = aws_vpc.silvex-vpc-172-33.id
  cidr_block              = "172.33.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.SILVEX-REGION-A}"

  tags = {
    Name = "silvex-sn-172-33-pub-1"
  }
}

resource "aws_subnet" "silvex-sn-172-33-pub-2" {
  vpc_id                  = aws_vpc.silvex-vpc-172-33.id
  cidr_block              = "172.33.2.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.SILVEX-REGION-B}"

  tags = {
    Name = "silvex-sn-172-33-pub-2"
  }
}

resource "aws_subnet" "silvex-sn-172-33-pub-3" {
  vpc_id                  = aws_vpc.silvex-vpc-172-33.id
  cidr_block              = "172.33.3.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.SILVEX-REGION-C}"

  tags = {
    Name = "silvex-sn-172-33-pub-3"
  }
}
