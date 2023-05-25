provider "aws" {
  region = "us-west-2"
}


resource "aws_security_group" "demo-sg" {
  for_each = local.nsgrules
  name     = each.key
  ingress {
    from_port   = each.value.from_port
    to_port     = each.value.to_port
    protocol    = each.value.protocol
    cidr_blocks = each.value.cidr_blocks
  }

  
  egress {
    from_port   = each.value.from_port
    to_port     = each.value.to_port
    protocol    = each.value.protocol
    cidr_blocks = each.value.cidr_blocks
  }

  tags = {
    Name = each.key
  }
}
