# Test module that doesn't require any cloud provider or credentials
# Returns static test data for validation purposes

locals {
  test_map = {
    key1 = "value1"
    key2 = "value2"
    key3 = "value3"
  }

  test_list = [
    "item1",
    "item2",
    "item3"
  ]

  test_string = "test-value"
  test_number = 42
  test_bool   = true
}

output "test_map" {
  description = "A test map"
  value       = local.test_map
}

output "test_list" {
  description = "A test list"
  value       = local.test_list
}

output "test_string" {
  description = "A test string"
  value       = local.test_string
}

output "test_number" {
  description = "A test number"
  value       = local.test_number
}

output "test_bool" {
  description = "A test boolean"
  value       = local.test_bool
}