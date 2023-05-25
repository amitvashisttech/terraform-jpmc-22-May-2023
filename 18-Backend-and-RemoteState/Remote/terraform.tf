terraform {
  backend "s3" {
    bucket = "terraform-demo-av-25may2023"
    key    = "project-A-appA/terraform.tfstate"
    region = "us-west-2"
  }
}
