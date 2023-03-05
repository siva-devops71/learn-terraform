resource "aws_route53_record" "record" {
  zone_id = "Z04391752LS917TT76G1F"
  name    = "${var.component}-dev.devops71.online"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "private_ip" {}
variable "component" {}