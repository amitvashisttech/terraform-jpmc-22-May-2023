provider "aws" {
region  = "us-west-2"
}

variable "sg_ports" { 
  type = list(number)
  description = "Allow Inbound Traffic to multiple ports"
  default = [443,8200,8201,8202,8300,8320,8330,8340,8080,8081,9000,9100,9200,9300]
}


resource "aws_security_group" "demo-sg" {
  name  = "demo-sample-sg-1"
  description = "Allow Inbound Traffic to multiple ports"

dynamic "ingress" {
  for_each = var.sg_ports
  content {  
    from_port = ingress.value
    to_port   = ingress.value
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


dynamic "egress" {
  for_each = var.sg_ports
  content {  
    from_port = egress.value
    to_port   = egress.value
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

  tags = {
    Name  = "demo-tf-sg"
  }
}
