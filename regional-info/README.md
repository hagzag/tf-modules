<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.50.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.95.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_availability_zones.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_availability_zone_count"></a> [availability\_zone\_count](#output\_availability\_zone\_count) | Number of available AZs in the region |
| <a name="output_availability_zones"></a> [availability\_zones](#output\_availability\_zones) | List of available AZ names in the region |
| <a name="output_region_description"></a> [region\_description](#output\_region\_description) | The description of the AWS region |
| <a name="output_region_endpoint"></a> [region\_endpoint](#output\_region\_endpoint) | The regional endpoint for AWS services |
| <a name="output_region_name"></a> [region\_name](#output\_region\_name) | n/a |
<!-- END_TF_DOCS -->