# Define provider configuration for AWS
provider "aws" {
  region = "us-west-2"
}

# Create an EKS cluster
resource "aws_eks_cluster" "example" {
  name     = "my-eks-cluster-2"
  role_arn = aws_iam_role.example.arn
  version  = "1.24"

  vpc_config {
    subnet_ids = ["subnet-0dd44d0c0b546abb4", "subnet-0e435d75327b592c3"]
  }


  tags = {
    Environment = "production"
  }
}

# Create an IAM role for the EKS cluster
resource "aws_iam_role" "example" {
  name = "eks-cluster-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

# Attach required policies to the IAM role
resource "aws_iam_role_policy_attachment" "example" {
  role       = aws_iam_role.example.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

# Create a kubeconfig file for accessing the EKS cluster
data "aws_eks_cluster_auth" "example" {
  name           = aws_eks_cluster.example.name
  #kubeconfig     = "eksconfig"
  depends_on     = [aws_eks_cluster.example]
}


output "cluster_info" {
  description = "Endpoint for EKS control plane"
  value       = aws_eks_cluster.example
}



output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = aws_eks_cluster.example.endpoint
}


output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = aws_eks_cluster.example.vpc_config[0].cluster_security_group_id
}


output "region" {
  description = "AWS region"
  value       = "us-west-2"
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = aws_eks_cluster.example.name
}

