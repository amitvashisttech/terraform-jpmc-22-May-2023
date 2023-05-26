resource "aws_instance" "dev-app" {
  count         = lookup(var.instance_count, terraform.workspace)
  ami           = local.ec2_instance_ami_east
  instance_type = lookup(var.instance_type, terraform.workspace)
  key_name      = var.key_name 
  vpc_security_group_ids = [ var.sg_id ]


  root_block_device {
    volume_type = "gp2"
  }
  tags = {
    Name = local.default_frontend_name
  }

  lifecycle {
    create_before_destroy = true
  }

  connection { 
     type = "ssh"
     user = "ec2-user"
     private_key = file(var.pvt_key)
     host        = self.public_ip
  }

  provisioner "file" { 
    source = "./scripts"
    destination = "/home/ec2-user/"
  }

  provisioner "remote-exec" {
    inline = [
       "sudo chmod +x ~/scripts/run_frontend.sh",
       "sudo   ~/scripts/run_frontend.sh",
    ]  
  }
}
