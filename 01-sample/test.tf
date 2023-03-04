resource "aws_instance" "ec2"  {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "spot-instance"
  vpc_security_group_ids = ["sg-09d7039fc04d628ea"]
  tags = {
    Name = "test"
  }
}