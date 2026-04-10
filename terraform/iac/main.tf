resource "aws_instance" "app" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "final-project-app"
  }
}