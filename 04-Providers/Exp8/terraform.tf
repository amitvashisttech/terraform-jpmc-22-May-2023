terraform { 
  required_providers { 
    aws = { 
       source = "hashicorp/aws"
       version = ">=4.44, <=4.45"
    }
    azurerm = { 
       source = "hashicorp/azurerm"
       version = "~> 2.40"
    }
  }
`
}
