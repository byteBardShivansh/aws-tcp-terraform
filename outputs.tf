output "web_server_public_ip" {
  value = aws_instance.web_server.public_ip
}

output "web_server_public_dns" {
  value = aws_instance.web_server.public_dns
}
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.ec2_instance.id
}

output "instance_arn" {
  description = "ARN of the EC2 instance"
  value       = aws_instance.ec2_instance.arn
}

output "instance_state" {
  description = "State of the EC2 instance"
  value       = aws_instance.ec2_instance.instance_state
}

output "private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.ec2_instance.private_ip
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.ec2_instance.public_ip
}

output "availability_zone" {
  description = "Availability zone of the EC2 instance"
  value       = aws_instance.ec2_instance.availability_zone
}