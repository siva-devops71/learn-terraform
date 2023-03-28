resource "aws_instance" "ec2" {
  ami = "ami-0089b8e98cd95257d"  ## this ami id is not workstation
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09d7039fc04d628ea"]
  tags = {
    Name = "test"
  }
}