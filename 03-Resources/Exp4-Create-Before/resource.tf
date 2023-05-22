# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

# After LifeCycle 

resource "aws_instance" "front" {
  count         = 1
  ami           = "ami-04e914639d0cca79a"
  #ami           = "ami-01acac09adf473073"
  instance_type = "t2.micro"
  root_block_device {
    volume_type = "gp2"
  }
  tags = {
    Name = "Frontend"
  }

  lifecycle { 
    create_before_destroy = true
  }
}
