# Test Examples

This directory contains example configurations for each module in the repository.
These examples demonstrate how to use each module and can be used to test
that the modules work correctly with `terraform init`, `plan`, and `apply`.

## Structure

Each module has its own subdirectory:
- `regional-info/`: Example for the regional-info module
- `role-validator/`: Example for the role-validator module
- `test-module/`: Example for the test-module module

## Usage

To test any module:

```bash
# Navigate to the module's example directory
cd test_examples/regional-info

# Initialize Terraform
terraform init

# Review the planned changes
terraform plan

# Apply the changes (requires AWS credentials for regional-info and role-validator)
# terraform apply

# For test-module, no credentials are needed
cd test_examples/test-module
terraform init
terraform plan
terraform apply  # This will work without any cloud provider
```

## Notes

- The `regional-info` and `role-validator` modules require AWS credentials to run
- The `test-module` does not require any cloud provider or credentials
- These examples are meant to validate that the modules are properly structured
  and can be consumed by other Terraform configurations