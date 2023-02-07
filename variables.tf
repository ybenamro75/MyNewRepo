##################################################################################
# VARIABLES
##################################################################################

variable "region" {
  default = "us-east-1"
}

variable "frmprt" {
  default = 8080
}

variable "toprt" {
  default = 8080
}

output "public_ip" {
  value = aws_instance.app_server.public_ip
  description = "The public IP"
}
