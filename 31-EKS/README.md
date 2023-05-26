## Setting Up EKS 
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```
```
  232  terraform apply --auto-approve
  233  aws eks --region $(terraform output -raw region) update-kubeconfig     --name $(terraform output -raw cluster_name)
  234  kubectl get ns
  235  kubectl create ns myspace
  236  kubectl get ns
  237  kubectl run hello-k8s --image=nginx --port=80
  238  kubectl get pods
```
