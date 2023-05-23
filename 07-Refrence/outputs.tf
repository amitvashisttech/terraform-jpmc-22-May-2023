output "webserver_public_ip_first" { 
  value = aws_instance.web[0].public_ip
}


output "webserver_public_ips" { 
  value = aws_instance.web.*.public_ip
}


/*
output "dbserver_public_ips" { 
  value = aws_instance.db.*.public_ip
}






output "dbserver_public_dns_name" { 
  value = aws_instance.db.*.public_dns
}


output "public_ips" { 
  value = "${tolist([ aws_instance.db.*.public_ip, aws_instance.web.*.public_ip ])}"
}
*/


output "eip" { 
  value = aws_eip.lb
}



output "eip_public_ip" { 
  value = aws_eip.lb.public_ip
}
