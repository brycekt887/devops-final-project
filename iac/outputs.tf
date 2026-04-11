output "public_ip" {
  description = "The public IP for the EC2 instance"
  value       = aws_instance.web.public_ip 
}

output "app_url" {
  description = "The URL to access the application"
  value       = "http://${aws_instance.web.public_ip}:3000"
}