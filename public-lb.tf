resource "aws_lb" "public-alb" {
  name               = "${local.TAG_PREFIX}-public"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.public.id]
  subnets            = var.PUBLIC_SUBNET_ID

  tags = {
    Environment = "${local.TAG_PREFIX}-public-lb"
  }
}

