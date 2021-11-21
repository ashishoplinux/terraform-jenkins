terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.64.2"
    }
  }
}

provider "aws" {
    region = "var.region"
  # Configuration options
}

resource "aws_instance" "web" {
  ami           = "ami-0629230e074c580f2"
  instance_type = "t3.micro"

  tags = {
    Name = "${terraform.workspace}-myinstance"
  }
}