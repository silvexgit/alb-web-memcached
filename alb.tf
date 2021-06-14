resource "aws_lb" "silvex-alb-pub-100" {
  name               = "silvex-alb-pub-100"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.Silvex-HQ-All-Traffic-172-33.id]
  subnets            = [aws_subnet.silvex-sn-172-33-pub-1.id, aws_subnet.silvex-sn-172-33-pub-2.id, aws_subnet.silvex-sn-172-33-pub-3.id]

  enable_deletion_protection = false

}
