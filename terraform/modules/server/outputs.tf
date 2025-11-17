output "server_id" {
  
  value       = aws_instance.server.id
}

output "server_public_ip" {
  
  value       = aws_instance.server.public_ip
}

output "server_private_ip" {
  
  value       = aws_instance.server.private_ip
}

output "server_sg_id" {
  
  value       = aws_security_group.server_sg.id
}
