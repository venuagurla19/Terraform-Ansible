###################################
# Outputs from Demo  Nginx Server
###################################

output "nginx_instance_id" {
  description = "ID of EC2 running Nginx"
  value       = aws_instance.nginx_proxy.id
}

output "nginx_instance_ip" {
  description = "IPv4 address of Nginx EC2"
  value       = aws_instance.nginx_proxy.public_ip
}

output "nginx_instance_keyname" {
  description = "Name of key for EC2 ssh"
  value       = aws_instance.nginx_proxy.key_name
}

output "nginx_instance_sg" {
  description = "Security groups associated with EC2"
  value       = aws_instance.nginx_proxy.security_groups
}
