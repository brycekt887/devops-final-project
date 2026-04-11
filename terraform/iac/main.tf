resource "aws_security_group" "web_sg" {
  name        = "devops-final-web-sg"
  description = "Allow web traffic"
 
  ingress {
    description = "HTTP"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
 
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
 
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
 
# Get latest Amazon Linux 2 AMI automatically
data "aws_ssm_parameter" "amazon_linux_2" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-kernel-default-hvm-x86_64-gp2"
}
 
resource "aws_instance" "web" {
  ami                    = data.aws_ssm_parameter.amazon_linux_2.value
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.web_sg.id]
 
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install docker -y
              service docker start
              usermod -a -G docker ec2-user
              docker pull brycekt4384/devops-final-project:latest
              docker run -d -p 3000:3000 brycekt4384/devops-final-project:latest
              EOF
 
  tags = {
    Name = "devops-final-project"
  }
}