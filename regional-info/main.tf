terraform {
  required_version = ">= 1.5.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.50.0"
    }
  }
}

data "aws_region" "current" {}

data "aws_availability_zones" "current" {
}

locals {
  region = data.aws_region.current
  azs    = data.aws_availability_zones.current
}

output "region_name" {
  value       = local.region.name
}

output "region_description" {
  description = "The description of the AWS region"
  value       = local.region.description
}

output "region_endpoint" {
  description = "The regional endpoint for AWS services"
  value       = local.region.endpoint
}

output "availability_zones" {
  description = "List of available AZ names in the region"
  value       = local.azs.names
}

output "availability_zone_count" {
  description = "Number of available AZs in the region"
  value       = length(local.azs.names)
}
