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

# Output the values for verification
output "region_name" {
  value = module.region.name
}

output "region_description" {
  value = module.region.description
}

output "region_endpoint" {
  value = module.region.endpoint
}

output "availability_zones" {
  value = module.region.availability_zones
}

output "availability_zone_count" {
  value = module.region.availability_zone_count
}