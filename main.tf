terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Test-ec2" {
  ami           = "ami-04cb4ca688797756f"  # Specify your desired AMI ID
  instance_type = "t3.medium"              # Choose an appropriate instance type

  subnet_id = "subnet-0c476a42644c28b3c"  # Specify your existing subnet ID
  vpc_security_group_ids = ["sg-0ec6baec404a4de1b"]  # Specify your existing security group IDs

  key_name = "securends-non-prod"        # Specify the name of your SSH key pair

  tags = {
    Name = "TerraformEC2Instance"
  }
}
