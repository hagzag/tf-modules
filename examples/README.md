# Examples

This directory contains example configurations for each module in the repository.
These examples demonstrate how to use each module and can be used to test
that the modules work correctly with `terraform init`, `plan`, and `apply`.

## Structure

Each module has its own subdirectory:

- `regional-info/`: Example for the regional-info module (requires AWS provider)
- `role-validator/`: Example for the role-validator module (requires AWS provider)
- `provider-less/test-module/`: Example for the test-module module (does not require any cloud provider)

## Usage

To test any module:

### For modules requiring AWS provider (regional-info, role-validator):

```bash
# Navigate to the module's example directory
cd examples/regional-info   # or examples/role-validator

# Initialize Terraform (will download the module and configure the AWS provider)
terraform init

# Review the planned changes
terraform plan

# Apply the changes (requires AWS credentials)
# terraform apply
```

### For the provider-less test module:

```bash
# Navigate to the test module example directory
cd examples/provider-less/test-module

# Initialize Terraform (will download the module, no provider needed)
terraform init

# Review the planned changes
terraform plan

# Apply the changes (no credentials needed)
# terraform apply
```

## Notes

- The `regional-info` and `role-validator` modules require AWS credentials to run `apply` (though `init` and `plan` may work if default credentials are configured).
- The `test-module` does not require any cloud provider or credentials.
- These examples are meant to validate that the modules are properly structured
  and can be consumed by other Terraform configurations.