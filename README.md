# terraform-azure-virtual-network
### All code is provided for reference purposes only and is used entirely at own risk. Code is for use in development environments only. Not intended for Production use. 


Terraform module for creating an Azure VNET


## Usage

    module "example" {
      source = "git@github.com:sce81/terraform-azure-virtual-network.git"
      environment       = "dev"
      name              = "example"
      resource_group    = data.azurerm_resource_group.example.name
      subnet_name       = module.example_keyvault.id
      subnet_cidr       = "10.0.0.0/16"
      security_group    = []
    }


### Prerequisites

Terraform >= 1.15.7
### Tested

Terraform >= 1.15.7
### Outputs

    id:     =  azurerm_virtual_network.main.id
    name:   =  azurerm_virtual_network.main.name
    cidr:   =  azurerm_virtual_network.main.address_space
    subnet: =  azurerm_virtual_network.main.subnet[*].id
    guid:   =  azurerm_virtual_network.main.guid
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.15.7 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.79.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.97.1 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [azurerm_virtual_network.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [azurerm_resource_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | n/a | yes |
| <a name="input_extra_tags"></a> [extra\_tags](#input\_extra\_tags) | n/a | `map(any)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_network_cidr"></a> [network\_cidr](#input\_network\_cidr) | n/a | `list(string)` | `[]` | no |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | n/a | `string` | n/a | yes |
| <a name="input_security_group"></a> [security\_group](#input\_security\_group) | n/a | `list(any)` | `[]` | no |
| <a name="input_subnet_cidr"></a> [subnet\_cidr](#input\_subnet\_cidr) | n/a | `list(string)` | `[]` | no |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | n/a | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_cidr"></a> [cidr](#output\_cidr) | n/a |
| <a name="output_guid"></a> [guid](#output\_guid) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_subnet"></a> [subnet](#output\_subnet) | n/a |
<!-- END_TF_DOCS -->
