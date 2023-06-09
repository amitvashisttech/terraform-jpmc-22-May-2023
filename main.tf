resource "aws_instance" "web2" {
  availability_zone = "us-west-2b"
  instance_type = "t2.micro"
  ami = "ami-04e914639d0cca79a"
  tags = {
    Name = "New Deployment - IJ"
  }
  root_block_device {
    volume_type = "gp2"
  }

}

