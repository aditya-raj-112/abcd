provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-08a6efd148b1f7504"  # Amazon Linux 2 AMI (update as needed)
  instance_type = "t3.micro"

  tags = {
    Name = "ExampleInstance"
  }
}

