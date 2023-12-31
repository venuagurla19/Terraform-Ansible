###################################
# Variables for Demo  Nginx Server
###################################

variable "mgmt_whitelist" {
  description = "CIDR blocks for SSH access to instance"
  type        = list(string)
}

variable "nginx_ami" {
  description = "AMI for Nginx EC2"
  type        = string
  # ubuntu-eoan-19.10-amd64-minimal-20200317
  default = "ami-01cd5988241256cd8"
}

variable "nginx_instance_size" {
  description = "The size of the Nginx EC2 instance"
  type        = string
  default     = "t3.micro"
}

variable "nginx_region" {
  description = "AWS region for Nginx EC2"
  type        = string
  default     = "us-east-2"
}

variable "ssh_priv_key_path" {
  description = "Path to private SSH key for Ansible to use"
  type        = string
  default     = "/tmp/nginx-id_rsa"
}

variable "ssh_pub_key" {
  description = "The public SSH key for Ansible"
  type        = string
}
