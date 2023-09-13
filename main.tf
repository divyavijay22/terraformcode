provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0f5ee92e2d63afc18"  # Specify your desired AMI ID
  instance_type = "t3.medium"              # Choose an appropriate instance type

  subnet_id = "subnet-087e34ae78c5eeab1"  # Specify your existing subnet ID
  vpc_security_group_ids = ["sg-0be4bd6a1bb04b689"]  # Specify your existing security group IDs

  key_name = "terranew"        # Specify the name of your SSH key pair

  tags = {
    Name = "TerraformEC2Instance"
  }
}
