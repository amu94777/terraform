terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

# terraform {
#   backend "s3" {
#     bucket = "jaya123-s3-bucket"
#     key = "workspace"
#     region = "us-east-1"
#     dynamodb_table = "jaya123-locking"
#   }


provider "aws" {
  region = "us-east-1"
}