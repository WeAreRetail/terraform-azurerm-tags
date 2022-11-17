# Azure Aware Tagging

[![Build Status](https://dev.azure.com/weareretail/Tooling/_apis/build/status/mod_azu_tags?repoName=mod_azu_tags&branchName=master)](https://dev.azure.com/weareretail/Tooling/_build/latest?definitionId=2&repoName=mod_azu_tags&branchName=master)[![Unilicence](https://img.shields.io/badge/licence-The%20Unilicence-green)](LICENCE)

Common Azure Terraform module to normalize tagging on ressources.

# Usage

```hcl
module "aware_tagging" {
  source = "weareretail/tags/azurerm"

  geozone           = "France Central"
  budget            = "PRODUIT_A"
  project           = "PRJ"
  rgpd_personal     = true
  rgpd_confidential = false
  disaster_recovery = false
  environment       = "DEV"
  repository        = "my_pet_project"
}

```

<!-- BEGIN_TF_DOCS -->
#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15.5 |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_budget"></a> [budget](#input\_budget) | Code name of the budget. | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Code name of the subproject. Must have 3 digits. | `string` | n/a | yes |
| <a name="input_rgpd_confidential"></a> [rgpd\_confidential](#input\_rgpd\_confidential) | Indicates that project contains confidential data | `bool` | n/a | yes |
| <a name="input_rgpd_personal"></a> [rgpd\_personal](#input\_rgpd\_personal) | Indicates that project contains personal data | `bool` | n/a | yes |
| <a name="input_custom_tags"></a> [custom\_tags](#input\_custom\_tags) | Specific tags. | `map(string)` | `{}` | no |
| <a name="input_disaster_recovery"></a> [disaster\_recovery](#input\_disaster\_recovery) | Indicates that the resources are on the disaster recovery infrastructure. | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment code (LAB, DEV, INT, TST, PRE, PRD). | `string` | `"PRD"` | no |
| <a name="input_geozone"></a> [geozone](#input\_geozone) | Azure region were resources are deployed | `string` | `"France Central"` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | The repository hosting the infrastructure code | `string` | `"repository_not_specified"` | no |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_tags"></a> [tags](#output\_tags) | Aware standard tags. |
<!-- END_TF_DOCS -->
