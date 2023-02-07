terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

#provider "aws" {
#  region = "us-east-1"
#  alias  = "Virginia"
#}

provider "aws" {
  profile = "myawscred"
  region  = var.region
}

resource "aws_security_group" "Virginia-sg" {
  name = "Virginia_sg"

  # HTTP access from anywhere
  ingress {
    from_port   = var.frmprt
    to_port     = var.toprt
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "app_server" {
  ami                    = "ami-0aa7d40eeae50c9a9"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.Virginia-sg.id]

  user_data   = <<-EOF
#!/bin/bash
echo "Hello, World" > index.html
nohup busybox httpd -f -p var.toprt &
EOF

#sudo amazon-linux-extras install -y nginx1
#sudo service nginx start
#sudo rm /usr/share/nginx/html/index.html
#echo '<html><head><title>My Server - Virginia</title></head><body style=\"background-color:#1F778D\"><p style=\"text-align: center;\"><span style=\"color:#FFFFFF;\"><span style=\"font-size:28px;\">I did it!</span></span></p></body></html>' | sudo tee /usr/share/nginx/html/index.html
#EOF

  user_data_replace_on_change = true

  tags = {
    Name = "WebServerViginia"
  }
}
