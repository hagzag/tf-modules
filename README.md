# tf-modules

Reusable Terraform modules for AWS infrastructure. All CI runs inside [`ghcr.io/hagzag/tools`](https://github.com/hagzag/tools) — no toolchain installation in the pipeline.

## modules

| Module | Purpose |
|--------|---------|
| [`regional-info`](./regional-info/) | Exposes current AWS region name, description, endpoint, and AZ list/count |
| [`role-validator`](./role-validator/) | Exposes caller identity (account ID, ARN, user ID) for validating assumed roles |
| [`test-module`](./test-module/) | Returns static test data for validation purposes (no cloud provider required) |

Both are data-only modules — they read AWS state, create no resources.

## usage

```hcl
module "region" {
  source = "github.com/hagzag/tf-modules//regional-info"
}

output "azs" {
  value = module.region.availability_zones
}
```

```hcl
module "identity" {
  source = "github.com/hagzag/tf-modules//role-validator"
}

output "account_id" {
  value = module.identity.account_id
}
```

## requirements

- Terraform >= 1.5.7
- AWS provider >= 5.50.0
- AWS credentials configured (any method: env vars, instance profile, SSO)

## ci pipeline

Defined in `.github/workflows/main.yml`. Runs inside `ghcr.io/hagzag/tools:latest`.

| Job | Trigger | What it does |
|-----|---------|-------------|
| `tools_smoke` | every push/PR | Verifies terraform, terragrunt, aws, jq, semantic-release are present in image |
| `find_changed_directories` | every push/PR | Detects which `*.tf` files changed, outputs directory matrix |
| `terraform_fmt` | PRs only | Runs `terraform fmt -check` on each changed module |
| `terraform_docs` | PRs to main | Re-renders `README.md` via terraform-docs and pushes back to PR branch |
| `release` | push to main | Runs semantic-release to cut a GitHub release and tag |

## releasing

Uses [Conventional Commits](https://www.conventionalcommits.org/). Merge to `main` triggers semantic-release automatically.

```
feat: add new module     → minor version bump
fix: correct output      → patch version bump
feat!: breaking change   → major version bump
```

Pin a specific release in consuming repos:

```hcl
source = "github.com/hagzag/tf-modules//regional-info?ref=v1.2.0"
```
