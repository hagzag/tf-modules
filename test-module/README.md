# test-module

A test Terraform module that doesn't require any cloud provider or credentials.
Returns static test data for validation purposes.

## Usage

```hcl
module "test" {
  source = "github.com/hagzag/tf-modules//test-module"
}

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
```

## Outputs

| Name | Description |
|------|-------------|
| test_map | A test map |
| test_list | A test list |
| test_string | A test string |
| test_number | A test number |
| test_bool | A test boolean |

## Requirements

- Terraform >= 1.5.7

No cloud provider or credentials required.