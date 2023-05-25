resource "aws_instance" "dev-app" {
  count             = var.ec2_instance_count
  ami               = local.ec2_instance_ami_east
  instance_type     = var.ec2_instance_type
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
