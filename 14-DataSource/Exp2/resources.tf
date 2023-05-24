resource "aws_instance" "east_frontend" {
  count             = var.ec2_instance_count
  ami               = local.ec2_instance_ami_east
  availability_zone = local.zones_east[count.index]
  instance_type     = var.ec2_instance_type
  depends_on        = [aws_instance.east_backend]
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

resource "aws_instance" "east_backend" {
  count             = var.ec2_instance_count
  ami               = local.ec2_instance_ami_east
  availability_zone = local.zones_east[count.index]
  instance_type     = var.ec2_instance_type
  root_block_device {
    volume_type = "gp2"
  }
  tags = {
    Name = local.default_backend_name
  }
  lifecycle {
    prevent_destroy = false
  }
}


# Using the Alias Provider Block


resource "aws_instance" "west_frontend" {
  provider          = aws.us-west-1
  count             = var.multi-region-deployment ? var.ec2_instance_count : 0
  ami               = local.ec2_instance_ami_west
  availability_zone = local.zones_west[count.index]
  instance_type     = var.ec2_instance_type
  depends_on        = [aws_instance.west_backend]
  root_block_device {
    volume_type = "gp2"
  }
  tags = local.some_tags

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_instance" "west_backend" {
  provider          = aws.us-west-1
  count             = var.multi-region-deployment ? var.ec2_instance_count : 0
  ami               = local.ec2_instance_ami_west
  availability_zone = local.zones_west[count.index]
  instance_type     = var.ec2_instance_type
  root_block_device {
    volume_type = "gp2"
  }
  tags = {
    Name = local.west_backend_name
  }
  lifecycle {
    prevent_destroy = false
  }
}


