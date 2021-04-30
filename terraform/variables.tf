variable "instance_type" {
  description = "Free tier EC2 Instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Ubuntu Server 20.04 LTS"
  default     = "ami-08bac620dc84221eb"
}

variable "key_name" {
  description = "Associated Key to SSH into the EC2 Instance"
  default     = "demo"
}