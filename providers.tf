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
  access_key = data.vault_kv_secret_v2.terraformsecret.data.aws_terra_accesskey
  secret_key = data.vault_kv_secret_v2.terraformsecret.data.aws_terra_secretkey
  }
