# Example usage of test-module module
module "test" {
  source = "../../test-module"
}

# Output the values for verification
output "test_map" {
  value = module.test.test_map
}

output "test_list" {
  value = module.test.test_list
}

output "test_string" {
  value = module.test.test_string
}

output "test_number" {
  value = module.test.test_number
}

output "test_bool" {
  value = module.test.test_bool
}