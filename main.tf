terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.32.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# terraform {
#   backend "s3" {
#     bucket = "zaman-bucket-github"
#     key    = "default-infrastructure"
#     region = "us-east-1"
#   }
# }

resource "aws_s3_bucket" "zaman-bucket" {
  bucket = "tf-zaman-bucket"

  tags = {
    Name        = "zaman-bucket"
    Environment = "Dev"
  }
}