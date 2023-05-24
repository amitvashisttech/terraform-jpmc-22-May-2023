# Configure the AWS Provider
provider "aws" {
  region = var.region
}

variable "region" { 
  default = "us-west-2"
}


data "aws_ami" "myami" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }

}

resource "aws_instance" "web" {
  ami           = data.aws_ami.myami.id
  instance_type = "t2.micro"
  root_block_device {
    volume_type   = "gp2"
  }
  tags = {
    Name = "HelloWorld"
  }
}

output "myami" { 
  value = data.aws_ami.myami
} 
