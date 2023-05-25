output "public_ip" { 
  value = aws_instance.dev-app.*.public_ip
}

output "public_dns" { 
  value = aws_instance.dev-app.*.public_dns
}


output "private_ip" { 
  value = aws_instance.dev-app.*.private_ip 
}

output "private_dns" { 
  value = aws_instance.dev-app.*.private_dns
}
