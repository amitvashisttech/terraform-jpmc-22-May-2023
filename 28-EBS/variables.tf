data "aws_ami" "myami" {
  most_recent = true
  owners  = ["amazon"]

  filter {
    name = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

locals { 
  default_name = "${join("-", tolist([terraform.workspace, "example"]))}"
}


variable "region" {
  default = "us-west-2"
}


variable "instance_type" { 
  type = map
  default = { 
      default = "t2.nano"
      dev     = "t2.micro"
      prod    = "t2.large"
      mindtree = "x1.large"
  }

}



variable "instance_count" { 
  type = map
  default = { 
      default = "1"
      dev     = "1"
      prod    = "1"
      mindtree = "1"
  }

}



variable "availability_zone" {
  default = "us-west-2b"
}

variable "pvt_key" {
   default = "/root/.ssh/myawskeypair.pem"
}


variable "key_name" {
   default = "terraform-jpmc-22-May-2023-KeyPair"
}


variable "sg_id" {
  default = "sg-014bd0ef66e4947bc"
}
