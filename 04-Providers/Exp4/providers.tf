# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}



provider "aws" {
  region = "us-west-1"
  alias  = "myprovider"
}
