output "PUBLIC_LB_ARN" {
  value = aws_lb.public-alb.arn
}

output "PRIVATE_LB_ARN" {
  value = aws_lb.private-alb.arn
}

output "PRIVATE_LB_DNS" {
  value = aws_lb.private-alb.dns_name
}

output "PRIVATE_LISTNER_ARN" {
  value = aws_lb_listener.backend.arn
}