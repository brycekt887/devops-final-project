resource "aws_instance" "app" {
  ami           = var.ami
  instance_type = "t2.micro"

  tags = {
    Name = "final-project-app"
  }
}

resource "aws_instance" "app" {
  ami           = var.ami
  instance_type = "t2.micro"

  user_data = <<EOF
#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
EOF

  tags = {
    Name = "final-project-app"
  }
}
