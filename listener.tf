resource "aws_lb_listener" "silvex-pub-listener-172-33" {
  load_balancer_arn = aws_lb.silvex-alb-pub-100.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.silvex-tg-172-33-web.arn
  }
}
