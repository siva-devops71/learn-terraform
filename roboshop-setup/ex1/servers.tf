resource "aws_instance" "frontend" {
  ami = "ami-0a017d8ceb274537d"
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
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb"  {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09d7039fc04d628ea"]
  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z04391752LS917TT76G1F"
  name    = "mongodb-dev.devops71.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}



resource "aws_instance" "catalogue"  {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09d7039fc04d628ea"]
  tags = {
    Name = "catalogue"
  }
}


resource "aws_instance" "redis"  {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09d7039fc04d628ea"]
  tags = {
    Name = "redis"
  }
}



resource "aws_instance" "cart"  {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09d7039fc04d628ea"]
  tags = {
    Name = "cart"
  }
}



resource "aws_instance" "user"  {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09d7039fc04d628ea"]
  tags = {
    Name = "user"
  }
}


resource "aws_instance" "mysql"  {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09d7039fc04d628ea"]
  tags = {
    Name = "mysql"
  }
}


resource "aws_instance" "shipping"  {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09d7039fc04d628ea"]
  tags = {
    Name = "shipping"
  }
}


resource "aws_instance" "rabbitmq"  {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09d7039fc04d628ea"]
  tags = {
    Name = "rabbitmq"
  }
}


resource "aws_instance" "payment"  {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09d7039fc04d628ea"]
  tags = {
    Name = "payment"
  }
}