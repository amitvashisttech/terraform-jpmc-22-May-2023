locals {
  default_frontend_name = join("-", tolist([var.project-name, "Frontend-East"]))
  default_backend_name  = join("-", tolist([var.project-name, "Backend-East"]))
  west_frontend_name    = join("-", tolist([var.project-name, "Frontend-West"]))
  west_backend_name     = join("-", tolist([var.project-name, "Backend-West"]))
}

locals {
  some_tags = {
    Owner   = "DevOps Team"
    Project = "Initial Demo Project"
    Server  = "Backend"
    Name    = local.west_frontend_name
  }
}


locals {
  ec2_instance_ami_east = data.aws_ami.myami_east.id
  ec2_instance_ami_west = data.aws_ami.myami_west.id
  zones_east            = data.aws_availability_zones.zones_east.names
  zones_west            = data.aws_availability_zones.zones_west.names
}
