variable "project-name" {
  description = "Ec2 Instance Deployments Project Name"
  type        = string
  default     = "Terraform-Demo"
}

variable "region" {
  description = "Ec2 Instance Deployments Region"
  type        = string
  default     = "us-west-2"
}


variable "instance_type" {
  description = "Ec2 Instance Type for Deployments"
  type        = map(any)
  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "t2.large"
    jpmc    = "t2.nano"
  }
}


variable "instance_count" {
  description = "Ec2 Instance Type for Deployments"
  type        = map(any)
  default = {
    default = 1
    dev     = 2
    prod    = 3
    jpmc    = 5
  }
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


