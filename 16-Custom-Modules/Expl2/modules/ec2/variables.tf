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


variable "ec2_instance_type" {
  description = "Ec2 Instance Type for Deployments"
  type        = string
  default     = "t2.micro"
}



variable "ec2_instance_count" {
  description = "Ec2 Instance Type for Deployments"
  type        = string
  default     = 1
}

