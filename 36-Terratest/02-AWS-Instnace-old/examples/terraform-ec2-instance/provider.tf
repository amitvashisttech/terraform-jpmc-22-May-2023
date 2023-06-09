# Configure the AWS Provider
provider "aws" {
  region = var.ec2_region_east
}



provider "aws" {
  region = var.ec2_region_west
  alias  = "us-west-1"
}
