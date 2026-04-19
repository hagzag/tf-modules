# Example usage of regional-info module
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