resource "aws_instance" "silvex-aws-linux-100-tf" {
  ami           = var.SILVEX-AMI
  instance_type = var.SILVEX-EC2-TYPE
  key_name = var.SILVEX-SSH-2020

  subnet_id = aws_subnet.silvex-sn-172-33-pub-1.id
  vpc_security_group_ids = [aws_security_group.Silvex-HQ-All-Traffic-172-33.id,
                            aws_security_group.Silvex-Traffic-172-33.id,
                            aws_security_group.Silvex-web-Traffic-172-33.id
                        ]

  user_data = "${file("./setup-ec2.sh")}"

    tags = {
    Name = "silvex-aws-linux-100-tf"
  }

}
resource "aws_instance" "silvex-aws-linux-101-tf" {
  ami           = var.SILVEX-AMI
  instance_type = var.SILVEX-EC2-TYPE
  key_name = var.SILVEX-SSH-2020

  subnet_id = aws_subnet.silvex-sn-172-33-pub-2.id
  vpc_security_group_ids = [aws_security_group.Silvex-HQ-All-Traffic-172-33.id,
                            aws_security_group.Silvex-Traffic-172-33.id,
                            aws_security_group.Silvex-web-Traffic-172-33.id
                        ]

  user_data = "${file("./setup-ec2.sh")}"

    tags = {
    Name = "silvex-aws-linux-101-tf"
  }

}
resource "aws_instance" "silvex-aws-linux-102-tf" {
  ami           = var.SILVEX-AMI
  instance_type = var.SILVEX-EC2-TYPE
  key_name = var.SILVEX-SSH-2020

  subnet_id = aws_subnet.silvex-sn-172-33-pub-3.id
  vpc_security_group_ids = [aws_security_group.Silvex-HQ-All-Traffic-172-33.id,
                            aws_security_group.Silvex-Traffic-172-33.id,
                            aws_security_group.Silvex-web-Traffic-172-33.id
                        ]

  user_data = "${file("./setup-ec2.sh")}"

    tags = {
    Name = "silvex-aws-linux-102-tf"
  }

}
