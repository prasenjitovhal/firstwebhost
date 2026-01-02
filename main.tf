resource "aws_instance" "jenkins_ec2" {
  ami           = "ami-0f5ee92e2d63afc18" # Amazon Linux 2 (Mumbai)
  instance_type = "t2.micro"

  tags = {
    Name = "EC2-from-Jenkins-Terraform"
  }
}
