locals { 
   default_frontend_name = join("-", tolist([var.project-name, "Frontend-East"]))
   default_backend_name = join("-", tolist([var.project-name, "Backend-East"]))
   west_frontend_name = join("-", tolist([var.project-name, "Frontend-West"]))
   west_backend_name = join("-", tolist([var.project-name, "Backend-West"]))
}

locals { 
 some_tags = { 
   Owner = "DevOps Team"
   Project = "Initial Demo Project"
   Server  = "Backend"
   Name    = local.west_frontend_name
 }
}
