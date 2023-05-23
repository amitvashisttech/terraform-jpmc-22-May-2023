variable "zones" {
  description = "Zone Variable for Ec2 Instance Deployments"
  type        = list(any)
  default     = ["us-west-2a", "us-west-2b"]
}

variable "ec2_region" {
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
  default     = 2
}


variable "ec2_instance_ami" {
  description = "Ec2 Instance AMI for Deployments"
  type        = string
  default     = "ami-04e914639d0cca79a"
}



variable "ec2_instance_name" {
  description = "Ec2 Instance Tag for Deployments"
  type        = string
  default     = "Test"
}
