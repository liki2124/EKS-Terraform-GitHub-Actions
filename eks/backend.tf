terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "my-cluster-bucket1"
    region         = "us-north-1c"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "LockFiles"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
