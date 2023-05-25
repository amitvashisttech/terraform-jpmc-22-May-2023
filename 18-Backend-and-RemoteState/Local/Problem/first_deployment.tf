# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
  #access_key = "Xuxuxuxuxuxux"
  #secret_key = "yayayyayaya" 
}


resource "aws_instance" "web" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"
  root_block_device {
    volume_type   = "gp2"
  }
  tags = {
    Name = "HelloWorld"
  }
}
