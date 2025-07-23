terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>6.0.0"
    }
  }
  required_version = "~>1.11.4"
}

provider "aws" {
    region = "us-east-1"
  # Configuration options
}

provider "aws" {
    region = "us-east-2"
    alias = "ohio"
  # Configuration options
}
