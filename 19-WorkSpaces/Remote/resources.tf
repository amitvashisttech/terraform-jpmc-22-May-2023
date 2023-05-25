resource "aws_instance" "dev-app" {
  count         = lookup(var.instance_count, terraform.workspace)
  ami           = local.ec2_instance_ami_east
  instance_type = lookup(var.instance_type, terraform.workspace)
  root_block_device {
    volume_type = "gp2"
  }
  tags = {
    Name = local.default_frontend_name
  }

  lifecycle {
    create_before_destroy = true
  }
}
