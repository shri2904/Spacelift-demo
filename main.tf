terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_instance" "app_server" {
  ami = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"

  tags = {
    Name = "app-server"
  }
}
