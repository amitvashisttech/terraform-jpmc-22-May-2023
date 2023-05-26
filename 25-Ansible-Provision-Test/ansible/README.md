 71  cd 02-Playbook/
   72  ls
   73  vim hosts
   74  ls
   75  vim playbook.yaml
   76  ls
   77  ansible-playbook -i hosts playbook.yaml -u root -k
   78  systemctl status apache2
   79  systemctl stop apache2
   80  systemctl status apache2
   81  ansible-playbook -i hosts playbook.yaml -u root -k
   82  systemctl status apache2
   83  vim ansible.cfg
   84  ansible-playbook  playbook.yaml -u root -k
   85  ls
   86  vim ansible.cfg
   87  ansible-playbook  playbook.yaml -u root -k
   88  ks
   89  ls
   90  vim playbook.yaml
   91  ansible-playbook  playbook.yaml -u root -k
   92  vim playbook.yaml
   93  ansible-playbook  playbook.yaml -u root -k
   94  ls
   95  vim playbook.yaml
   96  mkdir templates
   97  vim templates/info.j2
   98  ls
   99  ansible-playbook  playbook.yaml -u root -k
  100  ls
  101  cat templates/info.j2
