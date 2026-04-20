# Example usage of role-validator module
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

module "identity" {
  source = "../../role-validator"
}

# Output the values for verification
output "account_id" {
  value = module.identity.account_id
}

output "user_id" {
  value = module.identity.user_id
}

output "arn" {
  value = module.identity.arn
}