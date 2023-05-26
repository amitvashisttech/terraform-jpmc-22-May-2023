locals {
  default_frontend_name = join("-", tolist([var.project-name, terraform.workspace]))
}


locals {
  ec2_instance_ami_east = data.aws_ami.myami.id
}
