resource "aws_spot_instance_request" "frontend" {
  ami = "ami-0a017d8ceb274537d"
  spot_price = "low amount"
  spot_type = "persistent"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09d7039fc04d628ea"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z04391752LS917TT76G1F"
  name    = "frontend-dev.devops71.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.frontend.private_ip]
}
