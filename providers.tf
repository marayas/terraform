terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.55.0"
    }
  }
}


provider "aws" {
  # Configuration options
  region = var.aws_region
  
  assume_role {
     role_arn = "arn:aws:iam::${var.account_id}:role/${var.aws_account_access}"
   }
  sts_region = "us-west-2"
}
