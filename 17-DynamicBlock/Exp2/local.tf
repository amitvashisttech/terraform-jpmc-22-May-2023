locals {
  nsgrules = {
    ssh = {
      name        = "SSH"
      from_port   = "22"
      to_port     = "22"
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    rdp = {
      name        = "RDP"
      from_port   = "3389"
      to_port     = "3389"
      protocol    = "tcp"
      cidr_blocks = ["192.168.0.0/24"]
    }


    http = {
      name        = "HTTP"
      from_port   = "80"
      to_port     = "80"
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    https = {
      name        = "HTTPS"
      from_port   = "443"
      to_port     = "443"
      protocol    = "tcp"
      cidr_blocks = ["192.168.128.0/24"]
    }





  }
}

