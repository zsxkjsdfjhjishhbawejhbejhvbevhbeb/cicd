terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region                  = "eu-west-1"
  shared_credentials_file = "~/.aws/credentials"
}

# resource "aws_vpc" "main" {
#   cidr_block = "10.0.0.0/16"
#   tags = {
#     "Name" = "Main"
#   }
# }

# resource "aws_subnet" "dev_subnet" {
#   vpc_id = aws_vpc.main.id
#   cidr_block = "10.0.0.0/24"
#   map_public_ip_on_launch = true
#   tags = {
#     Name = "Dev subnet"
#   }
# }

# resource "aws_internet_gateway" "igw" {
#   vpc_id = aws_vpc.main.id

#   tags = {
#     Name = "Main"
#   }
# }

# resource "aws_default_route_table" "route_table" {
#   default_route_table_id = aws_vpc.main.default_route_table_id
#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.igw.id
#   }
#   tags = {
#     Name = "default route table"
#   }
# }

# resource "aws_security_group" "allow_ssh" {
#   name        = "allow_ssh"
#   description = "Allow SSH inbound traffic"
#   vpc_id      = aws_vpc.main.id

#   ingress {
#     description      = "SSH for VPC"
#     from_port        = 22
#     to_port          = 22
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "Allow SSH"
#   }
# }

# # resource "aws_subnet" "prod_subnet" {
# #   vpc_id = aws_vpc.main.id
# #   cidr_block = "10.0.0.0/16"
# #   availability_zone = "eu-west-1a"
  
# #   tags = {
# #     Name = "Prod subnet"
# #   }
# # }

resource "aws_instance" "jenkins" {
  ami           = var.ami_id
  instance_type = "t3.small"
  key_name      = var.key_name

  tags = {
    Name = "Jenkins"
  }
}

resource "aws_instance" "test" {
  ami           = var.ami_id
  instance_type = "t3.small"
  key_name      = var.key_name

  tags = {
    Name = "Test server"
  }
}