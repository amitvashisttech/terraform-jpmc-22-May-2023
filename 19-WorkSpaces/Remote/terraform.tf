terraform {
  backend "s3" {
    bucket = "terraform-demo-av-25may2023"
    key    = "project-workspace-demo/terraform.tfstate"
    region = "us-west-2"
  }
}
