resource "aws_security_group" "Silvex-HQ-All-Traffic-172-33" {
  vpc_id      = aws_vpc.silvex-vpc-172-33.id
  name        = "Silvex-HQ-All-Traffic-172-33"

  description = "security group that allows all ingress/egress traffic from silvex.com"
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["47.181.202.68/32", "47.181.202.64/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Silvex-HQ-All-Traffic-172-33"
  }
}
resource "aws_security_group" "Silvex-web-Traffic-172-33" {
  vpc_id      = aws_vpc.silvex-vpc-172-33.id
  name        = "Silvex-web-Traffic-172-33"

  description = "security group that allows all web ingress/egress traffic"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Silvex-web-Traffic-172-33"
  }
}

resource "aws_security_group" "Silvex-Traffic-172-33" {
  vpc_id      = aws_vpc.silvex-vpc-172-33.id
  name        = "Silvex--Traffic-172-33"

  description = "Security group that allows all ingress/egress traffic from/to 172.33.[1-6].0"
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["172.33.1.0/24", 
		   "172.33.2.0/24", 
		   "172.33.3.0/24",
		   "172.33.4.0/24",
		   "172.33.5.0/24",
		   "172.33.6.0/24",
		]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Silvex-Traffic-172-33"
  }
}

