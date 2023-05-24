output "public_ips_east" { 
  value = "${tolist([ aws_instance.east_backend.*.public_ip, aws_instance.east_frontend.*.public_ip ])}"
}



output "public_ips_west" { 
  value = "${tolist([ aws_instance.west_backend.*.public_ip, aws_instance.west_frontend.*.public_ip ])}"
}
