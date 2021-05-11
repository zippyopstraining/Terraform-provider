provider "aws" {
  region = "us-east-1"
  access_key = "Your_access_key"
  secret_key = "Your_secret_key"
}
resource "aws_instance" "sample" {
     ami = "ami-042e8287309f5df03"
     instance_type = "t2.micro"
     tags = {
       name = "new1"
  }
}

# Create Elastic IP address
resource "aws_eip" "sample" {
  vpc      = true
  instance = aws_instance.sample.id
  tags= {
    Name = "elastic_ip"
  }
}
