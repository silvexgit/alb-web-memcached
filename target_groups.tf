
resource "aws_lb_target_group" "silvex-tg-172-33-web" {
  name     		= "silvex-tg-172-33-web"
  port     		= 80
  protocol 		= "HTTP"
  deregistration_delay	= 300
  slow_start		= 30
  vpc_id   = aws_vpc.silvex-vpc-172-33.id
}

resource "aws_lb_target_group_attachment" "silvex-tg-ec2-172-33-1" {
  target_group_arn = aws_lb_target_group.silvex-tg-172-33-web.arn
  target_id        = aws_instance.silvex-aws-linux-100-tf.id
  port             = 80
}
resource "aws_lb_target_group_attachment" "silvex-tg-ec2-172-33-2" {
  target_group_arn = aws_lb_target_group.silvex-tg-172-33-web.arn
  target_id        = aws_instance.silvex-aws-linux-101-tf.id
  port             = 80
}
resource "aws_lb_target_group_attachment" "silvex-tg-ec2-172-33-3" {
  target_group_arn = aws_lb_target_group.silvex-tg-172-33-web.arn
  target_id        = aws_instance.silvex-aws-linux-102-tf.id
  port             = 80
}
