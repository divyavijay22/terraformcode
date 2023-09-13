provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0f5ee92e2d63afc18"  # Specify your desired AMI ID
  instance_type = "t2.micro"              # Choose an appropriate instance type

  subnet_id = "subnet-0b63dd819549fdf3e"  # Specify your existing subnet ID
  vpc_security_group_ids = ["sg-0af37425b60efb46d"]  # Specify your existing security group IDs

  key_name = "promotheustamil.pem"        # Specify the name of your SSH key pair

  tags = {
    Name = "ExampleInstance"
  }
}
