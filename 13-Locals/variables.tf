variable "multi-region-deployment" {
  default     = true
}

variable "project-name" {
  description = "Ec2 Instance Deployments Project Name"
  type        = string
  default     = "Terraform-Demo"
}

variable "zones_east" {
  description = "Zone Variable for Ec2 Instance Deployments"
  type        = list(any)
  default     = ["us-west-2a", "us-west-2b"]
}


variable "zones_west" {
  description = "Zone Variable for Ec2 Instance Deployments"
  type        = list(any)
  default     = ["us-west-2b", "us-west-2c"]
}

variable "ec2_region_east" {
  description = "Ec2 Instance Deployments Region"
  type        = string
  default     = "us-west-2"
}


variable "ec2_region_west" {
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


variable "ec2_instance_ami_east" {
  description = "Ec2 Instance AMI for Deployments"
  type        = string
  default     = "ami-04e914639d0cca79a"
}

variable "ec2_instance_ami_west" {
  description = "Ec2 Instance AMI for Deployments"
  type        = string
  default     = "ami-04e914639d0cca79a"
}


variable "ec2_instance_front_east_name" {
  description = "Ec2 Instance Tag for Deployments"
  type        = string
  default     = "Frontend-East"
}
variable "ec2_instance_front_west_name" {
  description = "Ec2 Instance Tag for Deployments"
  type        = string
  default     = "Frontend-West"
}
variable "ec2_instance_back_east_name" {
  description = "Ec2 Instance Tag for Deployments"
  type        = string
  default     = "Backend-East"
}
variable "ec2_instance_back_west_name" {
  description = "Ec2 Instance Tag for Deployments"
  type        = string
  default     = "Backend-West"
}
