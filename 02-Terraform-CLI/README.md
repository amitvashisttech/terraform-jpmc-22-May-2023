 155  terraform init
  156  s
  157  ls
  158  terraform plan
  159  ls
  160  terraform plan
  161  ls
  162  terraform validate
  163  vim first_deployment.tf
  164  terraform fmt
  165  cat first_deployment.tf
  166  terraform apply
  167  terraform plan -out build-plan
  168  ls
  169  file build-plan
  170  cat build-plan
  171  terraform apply build-plan
  172  ls
  173  terraform show
  174  ls
  175  cat first_deployment.tf
  176  terraform show
  177  terraform refresh
  178  terraform show
  179  terraform apply
  180  ls
  181  vim first_deployment.tf
  182  terraform apply
  183  vim first_deployment.tf
  184  terraform apply
  185  terraform show
  186  ls
  187  vim first_deployment.tf
  188  terraform apply
  189  ls
  190  terraform plan -destroy -out destroy-plan
  191  ls
  192  terraform apply "destroy-plan"
