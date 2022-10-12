resource "aws_lb" "private-alb" {
  name               = "${local.TAG_PREFIX}-private"
  internal           = true
  load_balancer_type = "application"
  security_groups    = [aws_security_group.private.id]
  subnets            = var.PRIVATE_SUBNET_ID

  tags = {
    Environment = "${local.TAG_PREFIX}-private-lb"
  }
}