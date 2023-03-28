resource "aws_instance" "ec2" {
  ami = "data.aws_ami.ami.image_id"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-09d7039fc04d628ea"]
  tags = {
    Name = "test"
  }
}