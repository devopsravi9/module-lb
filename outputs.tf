output "PUBLIC_LB_ARN" {
  value = aws_lb.public-alb.arn
}

output "PRIVATE_LB_ARN" {
  value = aws_lb.private-alb.arn
}