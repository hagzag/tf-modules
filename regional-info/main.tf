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

data "aws_availability_zones" "current" {}

locals {
  region = data.aws_region.current
  azs    = data.aws_availability_zones.current
}
