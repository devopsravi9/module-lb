resource "aws_route53_record" "www" {
  zone_id = var.PUBLIC_ZONE_ID
  name    = "roboshop-${var.ENV}"
  type    = "CNAME"
  ttl     = 30
  records = [aws_lb.public-alb.dns_name]
}