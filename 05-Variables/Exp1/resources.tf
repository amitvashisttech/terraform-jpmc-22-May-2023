variable "zones" {
  description = "Zone Variable for Ec2 Instance Deployments"
  type        = list(any)
  default     = ["us-west-2a", "us-west-2b"]
}




resource "aws_instance" "web" {
  count             = 2
  ami               = "ami-04e914639d0cca79a"
  availability_zone = var.zones[count.index]
  instance_type     = "t2.micro"
  root_block_device {
    volume_type = "gp2"
  }
  tags = {
    Name = "HelloWorld"
  }
}
