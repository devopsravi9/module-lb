resource "aws_security_group" "private" {
  name        = "${local.TAG_PREFIX}-sg-private-lb"
  description = "${local.TAG_PREFIX}-sg-private-lb"
  vpc_id      = var.VPC_ID

  ingress {
    description      = "http"
    from_port        = 80
    to_port          = 80
    protocol         = "TCP"
    cidr_blocks      = var.PRIVATE_SUBNET_CIDR
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${local.TAG_PREFIX}-sg-private-lb"
  }
}

resource "aws_security_group" "public" {
  name        = "${local.TAG_PREFIX}-sg-public-lb"
  description = "${local.TAG_PREFIX}-sg-public-lb"
  vpc_id      = var.VPC_ID

  ingress {
    description      = "https"
    from_port        = 443
    to_port          = 443
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${local.TAG_PREFIX}-sg-public-lb"
  }
}