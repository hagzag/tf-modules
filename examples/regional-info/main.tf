# Example usage of regional-info module
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.50.0"
    }
  }
}

provider "aws" {
  # Configuration will be picked up from environment variables, shared credentials file, etc.
  # For testing purposes, this will use whatever AWS configuration is available
}

module "region" {
  source = "../../regional-info"
}

