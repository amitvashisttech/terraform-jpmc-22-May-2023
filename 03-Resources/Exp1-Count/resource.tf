# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}


resource "aws_instance" "web" {
  count         = 1
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"
  root_block_device {
    volume_type = "gp2"
  }
  tags = {
    Name = "HelloWorld"
  }
}
