output "frontend_ip" { 
  value = module.frontend.public_ip
}

output "frontend_private_dns" { 
  value = module.frontend.private_dns
}


output "jboss_ip" { 
  value = module.jboss.public_ip 
}



output "jboss_dns" { 
  value = module.jboss.public_dns
}
