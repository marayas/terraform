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
  #access_key = var.AWS_ACCESS_KEY_ID
  #secret_key = var.AWS_SECRET_ACCESS_KEY

  assume_role {
     role_arn = "arn:aws:iam::${var.account_id}:role/${data.vault_kv_secret_v2.terraformsecret.data.aws_account_access}"
   }
  sts_region = "us-west-2"

  }
